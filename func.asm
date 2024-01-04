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
je if_else_4
if_4:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_4:
if_then_4:
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
je if_else_5
if_5:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_5:
if_then_5:
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
je if_else_6
if_6:
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
if_else_6:
if_then_6:
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
je if_else_7
if_7:
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
if_else_7:
if_then_7:
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
STR_IS_INT:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,0
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_8
if_8:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

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
je if_else_9
if_9:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_9:
if_then_9:
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
je if_else_10
if_10:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

jmp if_then_10
if_else_10:
call STR_IS_INT

if_then_10:
ret
POW:
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
je if_else_11
if_11:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_11:
if_then_11:
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

call POW

mov rax,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
imul rax,rcx
add r12,8
mov [r12],rax

ret
STR_TO_INT:
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
je if_else_12
if_12:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_12:
if_then_12:
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

mov r11,48
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
mov r11,10
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

call POW

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

mov rax,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
imul rax,rcx
add r12,8
mov [r12],rax

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

call STR_TO_INT

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

ret
INT_TO_STRING_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,10
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rax,[r12]
sub r12,8
mov rdx,0
idiv r11
add r12,8
mov [r12],rdx

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

mov r11,48
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

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

mov r11,10
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rax,[r12]
sub r12,8
mov rdx,0
idiv r11
add r12,8
mov [r12],rax

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
je if_else_13
if_13:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_13:
if_then_13:
call INT_TO_STRING_HELP

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

ret
INT_TO_STRING:
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
mov r11,0
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
je if_else_14
if_14:
call INT_TO_STRING_HELP

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

mov r11,45
add r12,8
mov [r12],r11

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

jmp if_then_14
if_else_14:
call INT_TO_STRING_HELP

if_then_14:
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

call STR_REVERSE

ret
SP_REG:
mov r11,string_0
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

ret
F_FLUSH:
mov r11,output_file
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,output_buffer
add r12,8
mov [r12],r11

mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rdx,[r12]
sub r12,8
mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
mov rax,1
syscall
add r12,8
mov [r12],rax

mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
ret
F_WRITE:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,output_buffer_cap
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_15
if_15:
call F_FLUSH

if_else_15:
if_then_15:
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
mov rdi,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],rdi

mov r11,output_buffer
add r12,8
mov [r12],r11

mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

call MEMCPY

mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,output_buffer_length
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
ret
F_NEWLINE:
mov r11,newline
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

call F_WRITE

ret
F_WRITELN:
call F_WRITE

call F_NEWLINE

ret
F_OUTPUT_TEMPLATE:
mov r11,string_1
add r12,8
mov [r12],r11
mov r11,12
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_2
add r12,8
mov [r12],r11
mov r11,22
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

mov r11,string_3
add r12,8
mov [r12],r11
mov r11,13
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_4
add r12,8
mov [r12],r11
mov r11,16
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

mov r11,string_5
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_6
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

call SP_REG

call F_WRITE

mov r11,string_7
add r12,8
mov [r12],r11
mov r11,11
add r12,8
mov [r12],r11

call F_WRITELN

call F_FLUSH

ret
F_FILL_BUFFER:
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
ret
SKIP_WHITESPACE:
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_16
if_16:
call F_FILL_BUFFER

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_17
if_17:
ret
jmp if_then_17
if_else_17:
call SKIP_WHITESPACE

ret
if_then_17:
if_else_16:
if_then_16:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov r11,10
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
je if_else_18
if_18:
mov r11,[r12]
sub r12,8
mov r11,line
add r12,8
mov [r12],r11

mov r11,line
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,col
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
jmp if_then_18
if_else_18:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,32
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
je if_else_19
if_19:
mov r11,[r12]
sub r12,8
mov r11,col
add r12,8
mov [r12],r11

mov r11,col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
jmp if_then_19
if_else_19:
mov r11,[r12]
sub r12,8
ret
if_then_19:
if_then_18:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
call SKIP_WHITESPACE

ret
COPY_TOKEN_TO_QUOTE:
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_20
if_20:
call F_FILL_BUFFER

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_21
if_21:
ret
jmp if_then_21
if_else_21:
call COPY_TOKEN_TO_QUOTE

ret
if_then_21:
if_else_20:
if_then_20:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov r11,10
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
je if_else_22
if_22:
mov r11,[r12]
sub r12,8
mov r11,string_8
add r12,8
mov [r12],r11
mov r11,14
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,line
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_9
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

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_10
add r12,8
mov [r12],r11
mov r11,46
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov rax,60
mov rdi,0
syscall
if_else_22:
if_then_22:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,token_len
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,next_col
add r12,8
mov [r12],r11

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,34
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
je if_else_23
if_23:
call COPY_TOKEN_TO_QUOTE

if_else_23:
if_then_23:
ret
COPY_TOKEN_TO_WHITESPACE:
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_24
if_24:
call F_FILL_BUFFER

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_25
if_25:
ret
jmp if_then_25
if_else_25:
call COPY_TOKEN_TO_WHITESPACE

ret
if_then_25:
if_else_24:
if_then_24:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,10
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

mov r11,32
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
je if_else_26
if_26:
mov r11,[r12]
sub r12,8
ret
if_else_26:
if_then_26:
mov r11,token
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,token_len
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,next_col
add r12,8
mov [r12],r11

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
call COPY_TOKEN_TO_WHITESPACE

ret
SKIP_TO_NEWLINE:
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_27
if_27:
call F_FILL_BUFFER

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_28
if_28:
ret
jmp if_then_28
if_else_28:
call SKIP_TO_NEWLINE

ret
if_then_28:
if_else_27:
if_then_27:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,10
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
je if_else_29
if_29:
call SKIP_TO_NEWLINE

if_else_29:
if_then_29:
ret
GRAB_TOKEN:
mov r11,line
add r12,8
mov [r12],r11

mov r11,next_line
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,col
add r12,8
mov [r12],r11

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,token_len
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
call SKIP_WHITESPACE

mov r11,next_line
add r12,8
mov [r12],r11

mov r11,line
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,next_col
add r12,8
mov [r12],r11

mov r11,col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_30
if_30:
ret
if_else_30:
if_then_30:
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,0
mov cl,[r11]
add r12,8
mov [r12],rcx

mov r11,34
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
je if_else_31
if_31:
mov r11,token
add r12,8
mov [r12],r11

mov r11,34
add r12,8
mov [r12],r11

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,token_len
add r12,8
mov [r12],r11

mov r11,1
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,next_col
add r12,8
mov [r12],r11

mov r11,next_col
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,input_buffer_curr
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
mov [r11],rcx
mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,input_buffer_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
call COPY_TOKEN_TO_QUOTE

jmp if_then_31
if_else_31:
call COPY_TOKEN_TO_WHITESPACE

if_then_31:
mov r11,token
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,string_11
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call STRNCMP

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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_32
if_32:
call SKIP_TO_NEWLINE

call GRAB_TOKEN

jmp if_then_32
if_else_32:
mov r11,token
add r12,8
mov [r12],r11

mov r11,token_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

if_then_32:
ret
PASS_1:
mov r11,string_26
add r12,8
mov [r12],r11
mov r11,13
add r12,8
mov [r12],r11

call F_WRITELN

ret
PASS_2:
ret
PASS_3:
ret
PASS_4:
ret
PASS_5:
ret
