#!/bin/bash

nasm -g -f elf64 forth.asm -o ./build/forth.o
ld ./build/forth.o -o ./build/forth
