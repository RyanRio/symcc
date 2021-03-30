# Documentation for building / testing process

Requirements:
Installing 64 bit and 32 bit llvm.

libssl-dev needed for some programs, like file

running file:
cd file

install:
z3
SYMCC_NO_SYMBOLIC_INPUT=1 CC=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/symcc CCX=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/sym++ ./configure --exec-prefix=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/RyanRio-test/file-build

SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make clean
SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make install

SYMCC_INPUT_FILE=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/RyanRio-test/fuzz-queue/symcc/fileB3_Q00/queue/queue/id:002147,src:000289 RYANRIO_DATA_LOG_FILE=./test.txt SYMCC_LOG_FILE="symcc-log.txt" file-build/bin/file /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/RyanRio-test/fuzz-queue/symcc/fileB3_Q00/queue/queue/id:002147,src:000289

qsym
SYMCC_NO_SYMBOLIC_INPUT=1 CC=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/symcc CCX=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/sym++ ./configure --exec-prefix=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/RyanRio-test/file-build

SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make clean
SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make install



RYANRIO_DATA_LOG_FILE=./test.txt ./file-build/bin/file D8

ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/symcc qsym-symcc
ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/sym++ qsym-sym++

ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/symcc z3-symcc
ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/sym++ z3-sym++

annoyances:
the tests are completed by examining the runtime printouts :/




32 Bit Adventures:

## Setting up 32 Bit SymCC
The steps are as follows:

### Installing LLVM
Installing llvm as shown here https://apt.llvm.org/ - for me I installed 32 bit llvm 11, i.e. specifying these sources:
* deb http://apt.llvm.org/focal/ llvm-toolchain-focal-11 main
* deb-src http://apt.llvm.org/focal/ llvm-toolchain-focal-11 main
in /etc/apt/sources.list
and then manually installing every package specified in the llvm 11 block like so:
`package_name:i386`. If you already have `amd64` packages installed then it may find conflicts when you try to install for instance `llvm-11:i386` in which case you just have to keep following the dependencies down in order to install the base level `i386` packages.

### Installing Z3
Next a 32 bit installation of z3 is required. This is much simpler, if you have a clone of the z3 repo, create a build dir within and then follow the https://github.com/Z3Prover/z3/blob/master/README-CMake.md instructions to build z3 32 bit. Note that you don't actually have to run `make install`, it is sufficient to just build.

### Nuances
* I found that at this point it was possible to build symcc with the simple runtime, however qsym was lacking the `z` library. After some searching I found https://stackoverflow.com/questions/45300553/configure-error-cannot-find-libz which suggested to install `zlib1g-dev:i386`. This worked!

### the script
So to actually build symcc as 32 bit I ran `build32.py` which just runs:
```python
cmd = ['cmake', '-G', 'Ninja', f'-DQSYM_BACKEND={"ON" if qsym else "OFF"}', f'-DZ3_DIR=/home/savethefishes/Documents/z3/build-32', 
    f'-DZ3_32BIT_DIR=/home/savethefishes/Documents/z3/build-32', '-DTARGET_32BIT=ON', '../../',
    '-DCMAKE_C_COMPILER=/usr/bin/clang-11', '-DCMAKE_CXX_COMPILER=/usr/bin/clang++-11']
```

Note that the CMAKE_C_COMPILER and CXX hints to cmake arent necessary after the cache is populated, but I needed to set them after I went through the whole uninstall and reinstall of llvm. I could at this point no longer include them in the script since the cache is populated.