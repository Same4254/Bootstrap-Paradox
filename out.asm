%include "data.asm"
%include "std.asm"
%include "func.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack

mov r11,19
add r12,8
mov [r12],r11

call PRINT_FIBS

; exit
mov rax, 60
mov rdi, 0
syscall
