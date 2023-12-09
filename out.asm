%include "data.asm"
%include "std.asm"
%include "func.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack

mov r11,8
add r12,8
mov [r12],r11

call PRINT_FIBS

call print_newline

call print_newline

mov r11,string_0
add r12,8
mov [r12],r11
mov r11,12
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,out_fp
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
mov [r11],rcx
mov r11,out_fp
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

; exit
mov rax, 60
mov rdi, 0
syscall
