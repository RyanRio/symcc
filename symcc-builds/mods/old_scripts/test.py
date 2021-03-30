#!/usr/bin/env python3

import subprocess
import sys
import yaml
import os
import shutil
import argparse

# parse args
parser = argparse.ArgumentParser()
parser.add_argument("--f", nargs=2, dest="file", help="run a single file with the given input'")
parser.add_argument("--lib", dest="target", choices=["tinyexpr", "file"], help="run with a full library")
parser.add_argument("-c", dest="clean", action='store_true', help="clean directory structure")

args = parser.parse_args()

# set up environment and directories

_environ = os.environ.copy()

cwd = os.path.dirname(os.getcwd())

z3_cwd = os.path.join(cwd, 'z3-build')
qsym_cwd = os.path.join(cwd, 'qsym-build')

executables = [directory + '/symcc' for directory in [z3_cwd, qsym_cwd]]
exe_locations = [os.path.split(os.path.dirname(exe))[1] for exe in executables]

# where to find corpora src
corpora_src = os.path.join(os.getcwd(), 'corpora/corpora-src')
makefile_loc = "src/" # where to go from a source directory to access makefile
tiny_expr = os.path.join(corpora_src, '11/tinyexprB2')
fileB5 = os.path.join(corpora_src, "11/fileB5")
all_queues_dir = os.path.join(os.getcwd(), "fuzz-queue", "symcc")
all_queues = os.listdir(all_queues_dir)

target_map = {
    "tinyexpr": tiny_expr,
    "file": fileB5
}

binname_map = {
    "tinyexpr": "src/math",
    "file": "src/file"
}

def build_input(idx, executable):
    if args.file:
        return ['echo', args.file[1], '|', './' + executable]
    else:
        return None

def clean_dirs():
    exclude = ["corpora", "build.py", "test.py", "compile-config.yaml", "runtime-config.yaml", "custom_programs", "fuzz-queue", "unsquash.py",
                "config.yaml", "build32.py", "test32.py", "README.md", "file"]
    file_dirs = os.listdir("./")
    delete = input(f"about to delete: {list(filter(lambda f: f not in exclude, file_dirs))}, are you sure?")
    if delete == "y":
        for fd in file_dirs:
            if fd not in exclude:
                if os.path.isdir(fd):
                    shutil.rmtree(fd)
                else:
                    os.remove(fd)

# fix the given dir
built_dir = os.getcwd()
def abs_dir(given):
    return built_dir + "/" + given

# force clean if argument is set
if args.clean:
    clean_dirs()

# run executable

inputs = ['simple.c']
outputs = ['.'.join(input.split('.')[:-1]) + '-out' for input in inputs]

if args.file or args.target:
    for EXECUTABLE, exe_location in zip(executables, exe_locations):
        print(f"Running with executable {EXECUTABLE}\n")
        # load new variables

        config = yaml.load(open("config.yaml"), Loader=yaml.SafeLoader)
        os.environ.update(config)

        # adjust logging locations
        if "SYMCC_OUTPUT_DIR" in os.environ:
            output_dir = abs_dir(f"{os.environ['SYMCC_OUTPUT_DIR']}-{exe_location}")
            print(output_dir)
            os.environ["SYMCC_OUTPUT_DIR"] = output_dir
            if os.path.exists(output_dir):
                pass
                # shutil.rmtree(output_dir)
            else:
                os.makedirs(output_dir)
        else:
            tmp_path = abs_dir(f"tmp/-{exe_location}")
            if not os.path.exists(tmp_path):
                os.makedirs(tmp_path)
            os.environ["SYMCC_OUTPUT_DIR"] = tmp_path

        if "RYANRIO_COMPILE_OUT" in os.environ:
            output_dir = abs_dir(f"{os.environ['RYANRIO_COMPILE_OUT']}-{exe_location}")
            os.environ["RYANRIO_COMPILE_OUT"] = output_dir
            if os.path.exists(output_dir):
                pass
                # shutil.rmtree(output_dir)
            else:
                os.makedirs(output_dir)
        else:
            tmp_path = f"tmp-compile/-{exe_location}"
            if not os.path.exists(tmp_path):
                os.makedirs(tmp_path)
            os.environ["RYANRIO_COMPILE_OUT"] = tmp_path

        if "SYMCC_LOG_FILE" in os.environ:
            os.environ["SYMCC_LOG_FILE"] = f"{os.environ['SYMCC_OUTPUT_DIR']}/{os.environ['SYMCC_LOG_FILE']}"
        if "RYANRIO_DATA_LOG_FILE" in os.environ:
            os.environ["RYANRIO_DATA_LOG_FILE"] = f"{os.environ['SYMCC_OUTPUT_DIR']}/{os.environ['RYANRIO_DATA_LOG_FILE']}"
        if "RYANRIO_COMPILE_LOG_FILE" in os.environ:
            os.environ["RYANRIO_COMPILE_LOG_FILE"] = f"{os.environ['RYANRIO_COMPILE_OUT']}/{os.environ['RYANRIO_COMPILE_LOG_FILE']}"
        
        print(f"environment set up as: {config}, running tests for executable dir: {exe_location}")
        print(f"\n | | | | | | | | | | | | | | | | | |\n")
        print(f"\n v v v v v v v v v v v v v v v v v v\n")

        # now both build the target executable and run with input
        if args.file:
            for input, output in zip(inputs, outputs):
                    output = output + "-" + exe_location
                    BUILD_OPTIONS = [EXECUTABLE, f"custom_programs/{input}", "-o", output]
                    print(f"building binary: {input} with command: {' '.join(BUILD_OPTIONS)}")
                    result = subprocess.run(BUILD_OPTIONS, env=os.environ)

                    if result.returncode == 0:
                        cmd = build_input(0, output)
                        print(f"success, running executable: {output} with command: {' '.join(cmd)}")
                        subprocess.run(' '.join(cmd), shell=True, env=os.environ)
                    else:
                        exit(result.returncode)
        else:
            os.environ["CC"] = EXECUTABLE
            #os.environ["CFLAGS"] = "-m32 -w"
            target_path = target_map[args.target] + "/src/"
            cur_path = os.getcwd()
            # result = subprocess.run([f"make", "clean", "-C", target_path], env=os.environ)
            # result = subprocess.run([f"make", "-C", target_path], env=os.environ)

            new_exe = args.target + "-tmp"

            # now run bin
            target_bin = binname_map[args.target]
            #   copy bin
            # shutil.copyfile(os.path.join(target_path, target_bin), new_exe) TODO: tmp remove
            shutil.copyfile(os.path.join("file-build", "bin", "file"), new_exe)
            subprocess.run(["chmod", "+x", new_exe], env=os.environ)
            # run through queue
            
            def build_lib_input(bin_path, test_file_path):
                return ['./' + bin_path, test_file_path]
            
            for queue_dir in filter(lambda n: args.target in n, all_queues):
                single_queue_folder = os.path.join(all_queues_dir, queue_dir, "queue/queue")
                for queue_file in filter(lambda s: s.startswith("id"), os.listdir(single_queue_folder)):
                    cmd = build_lib_input(new_exe, os.path.join(single_queue_folder, queue_file))
                    print(f"\nrunning: {target_bin} on file {os.path.join(single_queue_folder, queue_file)} using command: {cmd}")
                    os.environ["SYMCC_INPUT_FILE"] = os.path.join(single_queue_folder, queue_file)
                    subprocess.run(' '.join(cmd), shell=True, env=os.environ)
                    input("Continue?")

            # rm bin
            os.remove(new_exe)
        print(f"\n ----------------------------- \n")

    print(f"\n ----------------------------- \n")
    print(f"Done with tests")

else:
    print(f"\n ----------------------------- \n")
    print(f"Nothing to run")

# --------- #
os.environ.clear()
os.environ.update(_environ)