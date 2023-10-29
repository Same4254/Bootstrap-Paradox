#!/bin/bash

nasm -g -f elf64 forth.asm -o forth.o
ld forth.o -o forth
