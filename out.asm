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

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,output_buffer_cap
add r12,8
mov [r12],r11

mov r11,1024
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,newline
add r12,8
mov [r12],r11

mov r11,10
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,string_8
add r12,8
mov [r12],r11
mov r11,16
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,578
add r12,8
mov [r12],r11

mov r11,511
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

mov r11,output_file
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,string_9
add r12,8
mov [r12],r11
mov r11,17
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

mov r11,input_file
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
call F_OUTPUT_TEMPLATE

mov r11,input_file
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,input_buffer
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

mov r11,input_buffer_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
; exit
mov rax, 60
mov rdi, 0
syscall
