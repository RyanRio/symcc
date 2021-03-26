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

SYMCC_INPUT_FILE=fuzz-queue/symcc/fileB3000/queue/queue/id\:001111\,src\:000971+001045\,op\:splice\,rep\:64 RYANRIO_DATA_LOG_FILE=./test.txt SYMCC_LOG_FILE="symcc-log.txt" file-build/bin/file fuzz-queue/symcc/fileB3000/queue/queue/id\:001111\,src\:000971+001045\,op\:splice\,rep\:64

qsym
SYMCC_NO_SYMBOLIC_INPUT=1 CC=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/symcc CCX=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/sym++ ./configure --exec-prefix=/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/RyanRio-test/file-build

SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make clean
SYMCC_NO_SYMBOLIC_INPUT=1 SYMCC_LOG_FILE=./symcc_log RYANRIO_DATA_LOG_FILE=./data_log RYANRIO_COMPILE_LOG_FILE=./compile_log sudo make install



RYANRIO_DATA_LOG_FILE=./test.txt ./file-build/bin/file D8

ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/symcc qsym-symcc
ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/qsym-build/sym++ qsym-sym++

ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/symcc z3-symcc
ln -s /home/savethefishes/Documents/RyanRio/symcc/symcc-builds/z3-build/sym++ z3-sym++