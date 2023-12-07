%include "strings.asm"
%include "std.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
XOR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,1
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
XOR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
XOR r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
XOR r11,rcx
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
