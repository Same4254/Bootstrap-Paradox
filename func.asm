section .text
STRNCMP_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_0
if_0:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_0:
if_then_0:
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

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
je if_else_1
if_1:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_1:
if_then_1:
mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

call STRNCMP_HELP

ret
STRNCMP:
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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
je if_else_2
if_2:
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_2:
if_then_2:
call STRNCMP_HELP

ret
MEMCPY:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_3
if_3:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_3:
if_then_3:
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

call MEMCPY

ret
IS_INT:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_4
if_4:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_4:
if_then_4:
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],rcx
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
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,48
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
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,57
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
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_5
if_5:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_5:
if_then_5:
mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

call IS_INT

ret
STR_REVERSE_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_6
if_6:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_6:
if_then_6:
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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,1
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,2
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

call STR_REVERSE_HELP

ret
STR_REVERSE:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
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

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
OR r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_7
if_7:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_7:
if_then_7:
mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

call STR_REVERSE_HELP

ret
STR_FIND_CHAR_HELPER:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_8
if_8:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call -1

ret
if_else_8:
if_then_8:
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
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_9
if_9:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_9:
if_then_9:
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call STR_FIND_CHAR_HELPER

ret
STR_FIND_CHAR:
mov r11,0
add r12,8
mov [r12],r11

call STR_FIND_CHAR_HELPER

ret
