#!/bin/bash

./build-compiler.sh
./build/forth-stage2 ./test-programs/input.forth

nasm -g -f elf64 ./build/out-stage2.asm -o ./build/out-stage2.o
ld ./build/out-stage2.o -o ./build/out-stage2

echo -e "\nProgram Output:"
./build/out-stage2
