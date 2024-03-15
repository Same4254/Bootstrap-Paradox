#!/bin/bash

nasm -g -f elf64 forth.asm -o ./build/forth-stage1.o
ld ./build/forth-stage1.o -o ./build/forth-stage1
