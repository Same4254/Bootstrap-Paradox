%include "data.asm"
%include "std.asm"
%include "func.asm"
%include "resb.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack

mov r11,string_0
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

mov r11,100
add r12,8
mov [r12],r11

call STR_FIND_CHAR

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

; exit
mov rax, 60
mov rdi, 0
syscall
