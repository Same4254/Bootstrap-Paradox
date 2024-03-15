#!/bin/bash

./build-compiler.sh
./build/forth-stage1 ./test-programs/test.forth

nasm -g -f elf64 ./build/out.asm -o ./build/out.o
ld ./build/out.o -o ./build/out

echo -e "\nProgram Output:"
./build/out
