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

mov r11,5
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

mov r11,3
add r12,8
mov [r12],r11

mov r11,10
add r12,8
mov [r12],r11

mov rax,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
imul rax,rcx
add r12,8
mov [r12],rax

mov rdi,[r12]
sub r12,8
call print_int

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

mov r11,string_1
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

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
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

mov r11,string_2
add r12,8
mov [r12],r11
mov r11,10
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov r11,14
add r12,8
mov [r12],r11

mov r11,25
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,14
add r12,8
mov [r12],r11

mov r11,25
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

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,string_3
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

mov r11,string_4
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
mov rsi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rsi
add r12,8
mov [r12],rdi

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,2
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
setz r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_0
if_0:
mov r11,string_5
add r12,8
mov [r12],r11
mov r11,19
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

jmp if_then_0
if_else_0:
mov r11,string_6
add r12,8
mov [r12],r11
mov r11,20
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

if_then_0:
mov r11,string_7
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov r11,5
add r12,8
mov [r12],r11

mov r11,3
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,11
add r12,8
mov [r12],r11

mov r11,12
add r12,8
mov [r12],r11

mov r11,13
add r12,8
mov [r12],r11

mov r11,14
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

; exit
mov rax, 60
mov rdi, 0
syscall
