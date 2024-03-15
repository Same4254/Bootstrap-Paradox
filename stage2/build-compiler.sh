#!/bin/bash

# copy the bootstrap from the assembly stage
(cd ../stage1; ./build-compiler.sh)
cp ../stage1/build/forth-stage1 ./build

# copy the std assembly functions
cp ../stage1/build/std.asm ./build

./build/forth-stage1 ./forth-stage2.forth

nasm -g -f elf64 ./build/out.asm -o ./build/forth-stage2.o
ld ./build/forth-stage2.o -o ./build/forth-stage2
