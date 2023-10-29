#!/bin/bash

nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
