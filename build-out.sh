#!/bin/bash

nasm -g -f elf64 out.asm -o out.o
ld out.o -o out
