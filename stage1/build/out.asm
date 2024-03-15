%include "./build/data.asm"
%include "./build/std.asm"
%include "./build/func.asm"
%include "./build/resb.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack
mov r11,1
add r12,8
mov [r12],r11

mov r11,2
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
