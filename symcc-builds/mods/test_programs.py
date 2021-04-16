import sys
import os
import argparse
import shutil
import subprocess
import yaml

_environ = os.environ.copy()

cur_dir = os.getcwd()

fuzz_queue = os.path.join(cur_dir, "fuzz-queue", "symcc")

queue_mapping = {
    "file": "fileB3000",
    "tinyexpr": "tinyexprB2000"
}

from multiprocessing import Process

def run_program(path, program_location):
    for f in os.listdir(path):
        if "id" in f:
            full_path = os.path.join(path, f)
            os.environ["SYMCC_INPUT_FILE"] = full_path
            cmd = [program_location, full_path]
            result = subprocess.run(' '.join(cmd), shell=True, env=os.environ)
            if result.returncode < 0:
                input(f"Process failed {result.returncode}, continue?")

for program_name, queue_folder_name in queue_mapping.items():
    path = os.path.join(fuzz_queue, queue_folder_name, "queue", "queue")
    program_location = os.path.join(cur_dir, "programs64_build", program_name)
    if not os.path.exists(program_location):
        continue
    run_program(path, program_location)
    # Process(target=run_program, args=(path, program_location)).start()
