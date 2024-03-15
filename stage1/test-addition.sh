#!/bin/bash

nasm -g -f elf64 forth.asm -o ./build/forth.o
ld ./build/forth.o -o ./build/forth

./build/forth ./test-programs/test.forth

nasm -g -f elf64 ./build/out.asm -o ./build/out.o
ld ./build/out.o -o ./build/out

echo -e "\nProgram Output:"
./build/out
