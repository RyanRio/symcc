#!/usr/bin/env python3

import subprocess
import sys
import yaml
import os
import shutil
import argparse

# --- parse args --- #
parser = argparse.ArgumentParser()
parser.add_argument("-f", dest="file", help="unsquash the given directory")
parser.add_argument("-o", dest="out", help="the directory to output queues to")
args = parser.parse_args()
print(args)

if not args.file or not args.out:
    parser.error("Missing target directory or squash input")

# --- def constants --- #
command = "unsquashfs"
decompress_dirname = "squashfs-root"
curdir = os.getcwd()

unsquashed_dir = os.path.join(curdir, args.file)
dir_list = os.listdir(unsquashed_dir)
output_dir = args.out

if not os.path.exists(unsquashed_dir):
    parser.error(f"{unsquashed_dir} is not a valid directory")

# --- def functions --- #
def rmdecompress_if_exists():
    if decompress_dirname in os.listdir(curdir):
        # remove current root
        shutil.rmtree(os.path.join(curdir, decompress_dirname))

def unsquash(fuzzer, challenge, fullName):
    rmdecompress_if_exists()
    if not os.path.exists(os.path.join(output_dir, fuzzer)):
        os.mkdir(os.path.join(output_dir, fuzzer))
    BUILD_OPTIONS = [command, os.path.join(unsquashed_dir, fullName)]
    subprocess.run(BUILD_OPTIONS) # run command
    squashfs_output_dir = os.path.join(curdir, decompress_dirname, "data", challenge, "outputs")
    queues = filter(lambda x: challenge in x, os.listdir(squashfs_output_dir))
    for q in queues:
        shutil.copytree(os.path.join(squashfs_output_dir, q), os.path.join(output_dir, fuzzer, q, "queue"))
    
    
# --- run program --- #
if not os.path.exists(output_dir):
    os.mkdir(output_dir)
else:
    shutil.rmtree(output_dir) # clean tree
    os.mkdir(output_dir)

for f in dir_list:
    if f.endswith(".sfs"):
        # unsquash
        name_parts = f.split(".")
        unsquash(name_parts[0], name_parts[1], f)

rmdecompress_if_exists()