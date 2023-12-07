%include "strings.asm"
%include "std.asm"
%include "func.asm"

section .bss
the_stack resb 8192

section .text
    global _start

_start:
mov r12, the_stack

call TEST_FUNC

call TEST_FUNC

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

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
cmp rcx,r11
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_0
if_0:
mov r11,string_0
add r12,8
mov [r12],r11
mov r11,18
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

jmp if_then_0
if_else_0:
mov r11,string_1
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

if_then_0:
mov r11,2
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setg r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,2
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,2
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setl r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,2
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setle r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov rdi,[r12]
sub r12,8
call print_int

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

; exit
mov rax, 60
mov rdi, 0
syscall
