#!/bin/bash

nasm -g -f elf64 forth.asm -o forth.o
ld forth.o -o forth

./forth

nasm -g -f elf64 out.asm -o out.o
ld out.o -o out

./out
