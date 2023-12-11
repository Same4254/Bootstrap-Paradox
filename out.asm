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
mov r11,25
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rdx,[r12]
sub r12,8
mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
mov rax,2
syscall
add r12,8
mov [r12],rax

mov r11,fp
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
mov [r11],rcx
mov r11,fp
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,mem
add r12,8
mov [r12],r11

mov r11,1024
add r12,8
mov [r12],r11

mov rdx,[r12]
sub r12,8
mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
mov rax,0
syscall
add r12,8
mov [r12],rax

mov r11,mem
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

; exit
mov rax, 60
mov rdi, 0
syscall
