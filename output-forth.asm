section .bss
   the_stack resb 8192

section .text
   global _start

_start:
mov r12, the_stack
