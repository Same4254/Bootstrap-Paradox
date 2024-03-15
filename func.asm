section .text
_3DUP:
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

ret
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
if_else_2:
if_then_2:
call STRNCMP_HELP

ret
STR_LEN:
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
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_3:
if_then_3:
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

call STR_LEN

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
je if_else_4
if_4:
mov r11,[r12]
sub r12,8
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
je if_else_5
if_5:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_5:
if_then_5:
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
je if_else_6
if_6:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_6:
if_then_6:
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
je if_else_7
if_7:
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
je if_else_8
if_8:
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
je if_else_10
if_10:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_10:
if_then_10:
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
je if_else_11
if_11:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

jmp if_then_11
if_else_11:
call STR_IS_INT

if_then_11:
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
je if_else_12
if_12:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_12:
if_then_12:
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
je if_else_13
if_13:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_13:
if_then_13:
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
je if_else_14
if_14:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

ret
if_else_14:
if_then_14:
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
je if_else_15
if_15:
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

jmp if_then_15
if_else_15:
call INT_TO_STRING_HELP

if_then_15:
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
PRINT_INT:
mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

ret
SP_REG:
mov r11,string_0
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

ret
TOKEN_STRUCT_SIZE:
mov r11,48
add r12,8
mov [r12],r11

ret
TOKEN_STRING_LITERAL:
mov r11,1
add r12,8
mov [r12],r11

ret
TOKEN_IMM_INT:
mov r11,2
add r12,8
mov [r12],r11

ret
TOKEN_ADD:
mov r11,3
add r12,8
mov [r12],r11

ret
TOKEN_SUB:
mov r11,4
add r12,8
mov [r12],r11

ret
TOKEN_MUL:
mov r11,5
add r12,8
mov [r12],r11

ret
TOKEN_DIV:
mov r11,6
add r12,8
mov [r12],r11

ret
TOKEN_MOD:
mov r11,7
add r12,8
mov [r12],r11

ret
TOKEN_PRINT_INT:
mov r11,8
add r12,8
mov [r12],r11

ret
TOKEN_TYPE:
mov r11,9
add r12,8
mov [r12],r11

ret
TOKEN_CR:
mov r11,10
add r12,8
mov [r12],r11

ret
TOKEN_STACK_LEN:
mov r11,11
add r12,8
mov [r12],r11

ret
TOKEN_DUP:
mov r11,12
add r12,8
mov [r12],r11

ret
TOKEN_2DUP:
mov r11,13
add r12,8
mov [r12],r11

ret
TOKEN_SWAP:
mov r11,14
add r12,8
mov [r12],r11

ret
TOKEN_2SWAP:
mov r11,15
add r12,8
mov [r12],r11

ret
TOKEN_DROP:
mov r11,16
add r12,8
mov [r12],r11

ret
TOKEN_OVER:
mov r11,17
add r12,8
mov [r12],r11

ret
TOKEN_ROT:
mov r11,18
add r12,8
mov [r12],r11

ret
TOKEN_IS_EQUAL:
mov r11,19
add r12,8
mov [r12],r11

ret
TOKEN_NOT_EQUAL:
mov r11,20
add r12,8
mov [r12],r11

ret
TOKEN_GREATER:
mov r11,21
add r12,8
mov [r12],r11

ret
TOKEN_GREATER_EQ:
mov r11,22
add r12,8
mov [r12],r11

ret
TOKEN_LESS:
mov r11,23
add r12,8
mov [r12],r11

ret
TOKEN_LESS_EQ:
mov r11,24
add r12,8
mov [r12],r11

ret
TOKEN_AND:
mov r11,25
add r12,8
mov [r12],r11

ret
TOKEN_NOT:
mov r11,26
add r12,8
mov [r12],r11

ret
TOKEN_OR:
mov r11,27
add r12,8
mov [r12],r11

ret
TOKEN_XOR:
mov r11,28
add r12,8
mov [r12],r11

ret
TOKEN_IF:
mov r11,29
add r12,8
mov [r12],r11

ret
TOKEN_ELSE:
mov r11,30
add r12,8
mov [r12],r11

ret
TOKEN_THEN:
mov r11,31
add r12,8
mov [r12],r11

ret
TOKEN_WHILE:
mov r11,32
add r12,8
mov [r12],r11

ret
TOKEN_DO:
mov r11,33
add r12,8
mov [r12],r11

ret
TOKEN_END:
mov r11,34
add r12,8
mov [r12],r11

ret
TOKEN_VARIABLE_DECL:
mov r11,35
add r12,8
mov [r12],r11

ret
TOKEN_MEM_DECL:
mov r11,36
add r12,8
mov [r12],r11

ret
TOKEN_VARIABLE_REF:
mov r11,37
add r12,8
mov [r12],r11

ret
TOKEN_FETCH:
mov r11,38
add r12,8
mov [r12],r11

ret
TOKEN_FETCH_BYTE:
mov r11,39
add r12,8
mov [r12],r11

ret
TOKEN_STORE:
mov r11,40
add r12,8
mov [r12],r11

ret
TOKEN_STORE_BYTE:
mov r11,41
add r12,8
mov [r12],r11

ret
TOKEN_FUNC_DECL:
mov r11,42
add r12,8
mov [r12],r11

ret
TOKEN_RET:
mov r11,43
add r12,8
mov [r12],r11

ret
TOKEN_FUNC_CALL:
mov r11,44
add r12,8
mov [r12],r11

ret
TOKEN_SYS_READ:
mov r11,45
add r12,8
mov [r12],r11

ret
TOKEN_SYS_WRITE:
mov r11,46
add r12,8
mov [r12],r11

ret
TOKEN_SYS_OPEN:
mov r11,47
add r12,8
mov [r12],r11

ret
TOKEN_SYS_CLOSE:
mov r11,48
add r12,8
mov [r12],r11

ret
TOKEN_SYS_EXIT:
mov r11,49
add r12,8
mov [r12],r11

ret
TOKEN_UNKOWN_NAME:
mov r11,50
add r12,8
mov [r12],r11

ret
PUSH_TOKEN_NAME:
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,token_id_to_string_len
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

mov r11,16
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
mov [r11],rcx
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,token_id_to_string_len
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

mov r11,8
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
mov [r11],rcx
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,token_id_to_string_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,token_id_to_string_len
add r12,8
mov [r12],r11

mov r11,token_id_to_string_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,24
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
ret
STRING_NAME_PREFIX:
mov r11,string_46
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

ret
FIND_TOKEN_BY_ID_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_id_to_string_len
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
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_16
if_16:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

ret
if_else_16:
if_then_16:
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

mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,8
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,16
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

ret
if_else_17:
if_then_17:
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call FIND_TOKEN_BY_ID_HELP

ret
FIND_TOKEN_BY_ID:
mov r11,0
add r12,8
mov [r12],r11

call FIND_TOKEN_BY_ID_HELP

ret
FIND_TOKEN_BY_STR_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_id_to_string_len
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
cmp rcx,r11
setge r11B
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
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

ret
if_else_18:
if_then_18:
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

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,8
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,16
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
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
je if_else_19
if_19:
mov r11,token_id_to_string
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
if_else_19:
if_then_19:
mov r11,24
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

call FIND_TOKEN_BY_STR_HELP

ret
FIND_TOKEN_BY_STR:
mov r11,0
add r12,8
mov [r12],r11

call FIND_TOKEN_BY_STR_HELP

ret
ADD_TOKEN:
mov r11,token_struct_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,4800000
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_20
if_20:
mov r11,string_47
add r12,8
mov [r12],r11
mov r11,25
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
if_else_20:
if_then_20:
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

mov r11,token_struct_len
add r12,8
mov [r12],r11

mov r11,token_struct_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call TOKEN_STRUCT_SIZE

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
CREATE_SCOPE:
mov r11,scope_next_id
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,scope_next_id
add r12,8
mov [r12],r11

mov r11,scope_next_id
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
ret
PUSH_SCOPE:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_21
if_21:
mov r11,string_48
add r12,8
mov [r12],r11
mov r11,28
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
if_else_21:
if_then_21:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
ret
PUSH_IF_SCOPE:
mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_22
if_22:
mov r11,string_49
add r12,8
mov [r12],r11
mov r11,25
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
mov r11,if_stack
add r12,8
mov [r12],r11

mov r11,if_stack_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
call PUSH_SCOPE

ret
PUSH_WHILE_SCOPE:
mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_23
if_23:
mov r11,string_50
add r12,8
mov [r12],r11
mov r11,28
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
if_else_23:
if_then_23:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,while_stack
add r12,8
mov [r12],r11

mov r11,while_stack_len
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

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
call PUSH_SCOPE

ret
POP_SCOPE:
mov r11,scope_stack_len
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
mov r11,string_51
add r12,8
mov [r12],r11
mov r11,34
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
if_else_24:
if_then_24:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_25
if_25:
mov r11,string_52
add r12,8
mov [r12],r11
mov r11,59
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
if_else_25:
if_then_25:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
ret
POP_IF_SCOPE:
mov r11,if_stack_len
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
je if_else_26
if_26:
mov r11,string_53
add r12,8
mov [r12],r11
mov r11,31
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
if_else_26:
if_then_26:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,if_stack
add r12,8
mov [r12],r11

mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_27
if_27:
mov r11,string_54
add r12,8
mov [r12],r11
mov r11,50
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
if_else_27:
if_then_27:
mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
call POP_SCOPE

ret
POP_WHILE_SCOPE:
mov r11,while_stack_len
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
mov r11,string_55
add r12,8
mov [r12],r11
mov r11,34
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
if_else_28:
if_then_28:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,while_stack
add r12,8
mov [r12],r11

mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,string_56
add r12,8
mov [r12],r11
mov r11,53
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
if_else_29:
if_then_29:
mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
call POP_SCOPE

ret
IS_TOP_SCOPE_IF:
mov r11,scope_stack_len
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
mov r11,string_57
add r12,8
mov [r12],r11
mov r11,38
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
if_else_30:
if_then_30:
mov r11,if_stack_len
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
je if_else_31
if_31:
mov r11,string_58
add r12,8
mov [r12],r11
mov r11,43
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
if_else_31:
if_then_31:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,if_stack
add r12,8
mov [r12],r11

mov r11,if_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
ret
IS_TOP_SCOPE_WHILE:
mov r11,scope_stack_len
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
je if_else_32
if_32:
mov r11,string_59
add r12,8
mov [r12],r11
mov r11,38
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
if_else_32:
if_then_32:
mov r11,while_stack_len
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
je if_else_33
if_33:
mov r11,string_60
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
if_else_33:
if_then_33:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,while_stack
add r12,8
mov [r12],r11

mov r11,while_stack_len
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,8
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
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setz r11B
movzx r11,r11B
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
je if_else_34
if_34:
call F_FLUSH

if_else_34:
if_then_34:
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
MOV:
mov r11,string_61
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
AND:
mov r11,string_62
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
CMP:
mov r11,string_63
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
JMP:
mov r11,string_64
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
JE:
mov r11,string_65
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call F_WRITE

ret
JNE:
mov r11,string_66
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
SETZ:
mov r11,string_67
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

ret
SETNZ:
mov r11,string_68
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

ret
SETG:
mov r11,string_69
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

ret
SETGE:
mov r11,string_70
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

ret
SETL:
mov r11,string_71
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

ret
SETLE:
mov r11,string_72
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

ret
SETE:
mov r11,string_73
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

ret
ADD:
mov r11,string_74
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
SUB:
mov r11,string_75
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
DIV:
mov r11,string_76
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
CALL:
mov r11,string_77
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

ret
COM:
mov r11,string_78
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITE

ret
SPACE:
mov r11,string_79
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITE

ret
_RAX:
mov r11,string_80
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_AL:
mov r11,string_81
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call F_WRITE

ret
_RBX:
mov r11,string_82
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_RCX:
mov r11,string_83
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_RDX:
mov r11,string_84
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_RDI:
mov r11,string_85
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_R12:
mov r11,string_86
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
_SP:
mov r11,string_87
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

ret
LSQ:
mov r11,string_88
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITE

ret
RSQ:
mov r11,string_89
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITE

ret
F_OUTPUT_TEMPLATE:
mov r11,string_90
add r12,8
mov [r12],r11
mov r11,12
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_91
add r12,8
mov [r12],r11
mov r11,22
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

mov r11,string_92
add r12,8
mov [r12],r11
mov r11,13
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_93
add r12,8
mov [r12],r11
mov r11,16
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

mov r11,string_94
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_95
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

call SP_REG

call F_WRITE

mov r11,string_96
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
je if_else_35
if_35:
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
je if_else_36
if_36:
ret
jmp if_then_36
if_else_36:
call SKIP_WHITESPACE

ret
if_then_36:
if_else_35:
if_then_35:
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
je if_else_37
if_37:
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
jmp if_then_37
if_else_37:
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
je if_else_38
if_38:
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
jmp if_then_38
if_else_38:
mov r11,[r12]
sub r12,8
ret
if_then_38:
if_then_37:
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
je if_else_39
if_39:
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
je if_else_40
if_40:
ret
jmp if_then_40
if_else_40:
call COPY_TOKEN_TO_QUOTE

ret
if_then_40:
if_else_39:
if_then_39:
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
je if_else_41
if_41:
mov r11,[r12]
sub r12,8
mov r11,string_97
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

mov r11,string_98
add r12,8
mov [r12],r11
mov r11,6
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

mov r11,string_99
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
if_else_41:
if_then_41:
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
je if_else_42
if_42:
call COPY_TOKEN_TO_QUOTE

if_else_42:
if_then_42:
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
je if_else_43
if_43:
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
je if_else_44
if_44:
ret
jmp if_then_44
if_else_44:
call COPY_TOKEN_TO_WHITESPACE

ret
if_then_44:
if_else_43:
if_then_43:
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
je if_else_45
if_45:
mov r11,[r12]
sub r12,8
ret
if_else_45:
if_then_45:
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
je if_else_46
if_46:
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
je if_else_47
if_47:
ret
jmp if_then_47
if_else_47:
call SKIP_TO_NEWLINE

ret
if_then_47:
if_else_46:
if_then_46:
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
je if_else_48
if_48:
call SKIP_TO_NEWLINE

if_else_48:
if_then_48:
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
je if_else_49
if_49:
mov r11,0
add r12,8
mov [r12],r11

mov r11,0
add r12,8
mov [r12],r11

ret
if_else_49:
if_then_49:
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
je if_else_50
if_50:
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

jmp if_then_50
if_else_50:
call COPY_TOKEN_TO_WHITESPACE

if_then_50:
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

mov r11,string_100
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
je if_else_51
if_51:
call SKIP_TO_NEWLINE

call GRAB_TOKEN

jmp if_then_51
if_else_51:
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

if_then_51:
ret
PRINT_TOKEN:
mov r11,string_103
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

mov r11,8
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,string_104
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

mov r11,16
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

mov r11,string_105
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_STRING_LITERAL

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
je if_else_52
if_52:
mov r11,[r12]
sub r12,8
mov r11,string_106
add r12,8
mov [r12],r11
mov r11,28
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call PRINT_INT

mov r11,string_107
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_52:
if_then_52:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IMM_INT

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
je if_else_53
if_53:
mov r11,[r12]
sub r12,8
mov r11,string_108
add r12,8
mov [r12],r11
mov r11,23
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_53:
if_then_53:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IF

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
je if_else_54
if_54:
mov r11,[r12]
sub r12,8
mov r11,string_109
add r12,8
mov [r12],r11
mov r11,15
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_54:
if_then_54:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_ELSE

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
je if_else_55
if_55:
mov r11,[r12]
sub r12,8
mov r11,string_110
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_55:
if_then_55:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_THEN

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
je if_else_56
if_56:
mov r11,[r12]
sub r12,8
mov r11,string_111
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_56:
if_then_56:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_WHILE

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
je if_else_57
if_57:
mov r11,[r12]
sub r12,8
mov r11,string_112
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

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_57:
if_then_57:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_DO

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
je if_else_58
if_58:
mov r11,[r12]
sub r12,8
mov r11,string_113
add r12,8
mov [r12],r11
mov r11,15
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_58:
if_then_58:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_END

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
je if_else_59
if_59:
mov r11,[r12]
sub r12,8
mov r11,string_114
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_59:
if_then_59:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_VARIABLE_DECL

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
je if_else_60
if_60:
mov r11,[r12]
sub r12,8
mov r11,string_115
add r12,8
mov [r12],r11
mov r11,28
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_60:
if_then_60:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_MEM_DECL

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
je if_else_61
if_61:
mov r11,[r12]
sub r12,8
mov r11,string_116
add r12,8
mov [r12],r11
mov r11,23
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_117
add r12,8
mov [r12],r11
mov r11,10
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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

ret
if_else_61:
if_then_61:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_VARIABLE_REF

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
je if_else_62
if_62:
mov r11,[r12]
sub r12,8
mov r11,string_118
add r12,8
mov [r12],r11
mov r11,22
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_62:
if_then_62:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_DECL

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
je if_else_63
if_63:
mov r11,[r12]
sub r12,8
mov r11,string_119
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_63:
if_then_63:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_CALL

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
je if_else_64
if_64:
mov r11,[r12]
sub r12,8
mov r11,string_120
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_else_64:
if_then_64:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call FIND_TOKEN_BY_ID

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
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_65
if_65:
mov r11,string_121
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
jmp if_then_65
if_else_65:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_122
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

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

ret
if_then_65:
ret
PRINT_TOKENS_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_66
if_66:
ret
if_else_66:
if_then_66:
mov r11,token_struct
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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PRINT_TOKEN

call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PRINT_TOKENS_HELP

ret
PRINT_TOKENS:
mov r11,0
add r12,8
mov [r12],r11

call PRINT_TOKENS_HELP

mov r11,[r12]
sub r12,8
ret
IS_VAR_NAME_HELP:
call _3DUP

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call STR_LEN

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_67
if_67:
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
if_else_67:
if_then_67:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call STR_LEN

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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,variable_names
add r12,8
mov [r12],r11

mov r11,variable_names_len
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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_68
if_68:
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
if_else_68:
if_then_68:
call IS_VAR_NAME_HELP

ret
IS_VAR_NAME:
mov r11,variable_names
add r12,8
mov [r12],r11

call IS_VAR_NAME_HELP

ret
IS_METHOD_NAME_HELP:
call _3DUP

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call STR_LEN

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_69
if_69:
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
if_else_69:
if_then_69:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call STR_LEN

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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,method_names
add r12,8
mov [r12],r11

mov r11,method_names_len
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

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_70
if_70:
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
if_else_70:
if_then_70:
call IS_METHOD_NAME_HELP

ret
IS_METHOD_NAME:
mov r11,method_names
add r12,8
mov [r12],r11

call IS_METHOD_NAME_HELP

ret
PASS_1:
call GRAB_TOKEN

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
je if_else_71
if_71:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
ret
if_else_71:
if_then_71:
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

mov r11,0
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

mov r11,8
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

mov r11,16
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
je if_else_72
if_72:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,string_literals_len
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

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_73
if_73:
mov r11,string_123
add r12,8
mov [r12],r11
mov r11,41
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
if_else_73:
if_then_73:
call TOKEN_STRING_LITERAL

call ADD_TOKEN

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
mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,string_literals_id
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
mov r11,string_literals_id
add r12,8
mov [r12],r11

mov r11,string_literals_id
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,string_literals
add r12,8
mov [r12],r11

mov r11,string_literals_len
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
mov [r11],rcx
mov r11,32
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
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
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

mov r11,string_literals
add r12,8
mov [r12],r11

mov r11,string_literals_len
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

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,string_literals_len
add r12,8
mov [r12],r11

mov r11,string_literals_len
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
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call PASS_1

ret
if_else_72:
if_then_72:
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

call STR_IS_INT

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
je if_else_74
if_74:
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

call TOKEN_IMM_INT

call ADD_TOKEN

mov r11,24
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

call STR_TO_INT

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call PASS_1

ret
if_else_74:
if_then_74:
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

mov r11,string_124
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
je if_else_75
if_75:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_IF

call ADD_TOKEN

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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call CREATE_SCOPE

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
call PUSH_IF_SCOPE

call PASS_1

ret
if_else_75:
if_then_75:
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

mov r11,string_125
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_76
if_76:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_ELSE

call ADD_TOKEN

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call IS_TOP_SCOPE_IF

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
je if_else_77
if_77:
mov r11,string_126
add r12,8
mov [r12],r11
mov r11,45
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
if_else_77:
if_then_77:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
call PASS_1

ret
if_else_76:
if_then_76:
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

mov r11,string_127
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_78
if_78:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_THEN

call ADD_TOKEN

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call IS_TOP_SCOPE_IF

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
je if_else_79
if_79:
mov r11,string_128
add r12,8
mov [r12],r11
mov r11,45
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
if_else_79:
if_then_79:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

call POP_IF_SCOPE

call PASS_1

ret
if_else_78:
if_then_78:
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

mov r11,string_129
add r12,8
mov [r12],r11
mov r11,5
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
je if_else_80
if_80:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_WHILE

call ADD_TOKEN

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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call CREATE_SCOPE

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
call PUSH_WHILE_SCOPE

call PASS_1

ret
if_else_80:
if_then_80:
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

mov r11,string_130
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_81
if_81:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_DO

call ADD_TOKEN

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call IS_TOP_SCOPE_WHILE

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
je if_else_82
if_82:
mov r11,string_131
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
if_else_82:
if_then_82:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
call PASS_1

ret
if_else_81:
if_then_81:
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

mov r11,string_132
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call STRNCMP

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_83
if_83:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_END

call ADD_TOKEN

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call IS_TOP_SCOPE_WHILE

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
je if_else_84
if_84:
mov r11,string_133
add r12,8
mov [r12],r11
mov r11,47
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
if_else_84:
if_then_84:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_85
if_85:
mov r11,string_134
add r12,8
mov [r12],r11
mov r11,43
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
if_else_85:
if_then_85:
mov r11,scope_stack
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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

mov r11,8
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
mov r11,[r11]
add r12,8
mov [r12],r11

call POP_WHILE_SCOPE

call PASS_1

ret
if_else_83:
if_then_83:
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
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx

mov r11,string_135
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call STRNCMP

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

mov r11,string_136
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call STRNCMP

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
OR r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_86
if_86:
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_87
if_87:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,1
add r12,8
mov [r12],r11

call TOKEN_MEM_DECL

call ADD_TOKEN

jmp if_then_87
if_else_87:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,0
add r12,8
mov [r12],r11

call TOKEN_VARIABLE_DECL

call ADD_TOKEN

if_then_87:
call GRAB_TOKEN

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
je if_else_88
if_88:
mov r11,string_137
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

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_138
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_139
add r12,8
mov [r12],r11
mov r11,49
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
if_else_88:
if_then_88:
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

call FIND_TOKEN_BY_STR

mov r11,0
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
je if_else_89
if_89:
mov r11,string_140
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

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_141
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_142
add r12,8
mov [r12],r11
mov r11,44
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
if_else_89:
if_then_89:
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,variable_names
add r12,8
mov [r12],r11

mov r11,variable_names_len
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
mov [r11],rcx
mov r11,32
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
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
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
add r11,rcx
add r12,8
mov [r12],r11

mov r11,variable_names_len
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

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_90
if_90:
mov r11,string_143
add r12,8
mov [r12],r11
mov r11,37
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
if_else_90:
if_then_90:
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

mov r11,variable_names
add r12,8
mov [r12],r11

mov r11,variable_names_len
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

mov r11,variable_names_len
add r12,8
mov [r12],r11

mov r11,variable_names_len
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
mov r11,variable_names
add r12,8
mov [r12],r11

mov r11,variable_names_len
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

mov r11,0
add r12,8
mov [r12],r11

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,variable_names_len
add r12,8
mov [r12],r11

mov r11,variable_names_len
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_91
if_91:
call GRAB_TOKEN

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

call STR_IS_INT

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_92
if_92:
call STR_TO_INT

mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,token_struct_len
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

call TOKEN_STRUCT_SIZE

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
sub r11,rcx
add r12,8
mov [r12],r11

mov r11,40
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
mov [r11],rcx
jmp if_then_92
if_else_92:
mov r11,string_144
add r12,8
mov [r12],r11
mov r11,45
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov rax,60
mov rdi,0
syscall
if_then_92:
if_else_91:
if_then_91:
call PASS_1

ret
jmp if_then_86
if_else_86:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
if_then_86:
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

mov r11,string_145
add r12,8
mov [r12],r11
mov r11,4
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
je if_else_93
if_93:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call TOKEN_FUNC_DECL

call ADD_TOKEN

call GRAB_TOKEN

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
je if_else_94
if_94:
mov r11,string_146
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

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_147
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_148
add r12,8
mov [r12],r11
mov r11,40
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
if_else_94:
if_then_94:
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

call FIND_TOKEN_BY_STR

mov r11,0
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
je if_else_95
if_95:
mov r11,string_149
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

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_150
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,int_to_string_buffer
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

call INT_TO_STRING

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

mov r11,string_151
add r12,8
mov [r12],r11
mov r11,37
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
if_else_95:
if_then_95:
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,method_names
add r12,8
mov [r12],r11

mov r11,method_names_len
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
mov [r11],rcx
mov r11,32
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
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
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
add r11,rcx
add r12,8
mov [r12],r11

mov r11,method_names_len
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

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_96
if_96:
mov r11,string_152
add r12,8
mov [r12],r11
mov r11,35
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
if_else_96:
if_then_96:
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

mov r11,method_names
add r12,8
mov [r12],r11

mov r11,method_names_len
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

mov r11,method_names_len
add r12,8
mov [r12],r11

mov r11,method_names_len
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
mov r11,method_names
add r12,8
mov [r12],r11

mov r11,method_names_len
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

mov r11,0
add r12,8
mov [r12],r11

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
mov r11,method_names_len
add r12,8
mov [r12],r11

mov r11,method_names_len
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
call PASS_1

ret
if_else_93:
if_then_93:
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

call FIND_TOKEN_BY_STR

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
setnz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_97
if_97:
call ADD_TOKEN

mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call PASS_1

ret
if_else_97:
if_then_97:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,referenced_names_len
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

mov r11,1024
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_98
if_98:
mov r11,string_153
add r12,8
mov [r12],r11
mov r11,39
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
if_else_98:
if_then_98:
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

mov r11,referenced_names
add r12,8
mov [r12],r11

mov r11,referenced_names_len
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

mov r11,referenced_names
add r12,8
mov [r12],r11

mov r11,referenced_names_len
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

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,referenced_names_len
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

mov r11,referenced_names_len
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
mov r11,referenced_names
add r12,8
mov [r12],r11

mov r11,referenced_names_len
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

mov r11,0
add r12,8
mov [r12],r11

mov r8,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov byte [r11],r8B
call TOKEN_UNKOWN_NAME

call ADD_TOKEN

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,32
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
mov [r11],rcx
mov r11,24
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
mov [r11],rcx
call PASS_1

ret
PASS_2_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_99
if_99:
mov r11,[r12]
sub r12,8
ret
if_else_99:
if_then_99:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_STRUCT_SIZE

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

mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_UNKOWN_NAME

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
je if_else_100
if_100:
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
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx

call IS_VAR_NAME

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_101
if_101:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_VARIABLE_REF

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
jmp if_then_101
if_else_101:
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

call IS_METHOD_NAME

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_102
if_102:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_CALL

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov [r11],rcx
jmp if_then_102
if_else_102:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_154
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

mov rsi,[r12]
sub r12,8
mov rdi,[r12]
sub r12,8
call print

call print_newline

mov rax,60
mov rdi,0
syscall
if_then_102:
if_then_101:
if_else_100:
if_then_100:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call PASS_2_HELP

ret
PASS_2:
mov r11,0
add r12,8
mov [r12],r11

call PASS_2_HELP

ret
POP_REG:
mov r11,string_155
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITE

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

call F_WRITELN

call MOV

call SPACE

call F_WRITE

call COM

call SPACE

call LSQ

call _SP

call RSQ

call F_NEWLINE

call SUB

call SPACE

call _SP

call COM

call SPACE

mov r11,string_156
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
PUSH_REG:
mov r11,string_157
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITE

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

call F_WRITELN

call MOV

call SPACE

call LSQ

call _SP

call RSQ

call COM

call SPACE

call F_WRITELN

call ADD

call SPACE

call _SP

call COM

call SPACE

mov r11,string_158
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
PUSH_INT_AS_STR:
call MOV

call SPACE

call _RAX

call COM

call SPACE

call F_WRITELN

mov r11,string_159
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

ret
PUSH_INT:
mov r11,int_to_string_buffer
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

call INT_TO_STRING

call PUSH_INT_AS_STR

ret
PUSH_NAME:
call MOV

call SPACE

call _RAX

call COM

call SPACE

call F_WRITELN

mov r11,string_160
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

ret
BINARY_OP_STACK:
mov r11,string_161
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call F_WRITE

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

call F_WRITELN

mov r11,string_162
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_163
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call F_WRITE

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

mov r11,string_164
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

ret
TRANSLATE_TOKEN:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_STRING_LITERAL

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
je if_else_103
if_103:
mov r11,[r12]
sub r12,8
mov r11,string_165
add r12,8
mov [r12],r11
mov r11,15
add r12,8
mov [r12],r11

call F_WRITE

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_166
add r12,8
mov [r12],r11
mov r11,14
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _RAX

call COM

call SPACE

call STRING_NAME_PREFIX

call F_WRITE

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

call F_NEWLINE

mov r11,string_167
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_168
add r12,8
mov [r12],r11
mov r11,13
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call PUSH_INT

call F_NEWLINE

ret
if_else_103:
if_then_103:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IMM_INT

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
je if_else_104
if_104:
mov r11,[r12]
sub r12,8
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,string_169
add r12,8
mov [r12],r11
mov r11,16
add r12,8
mov [r12],r11

call F_WRITE

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

call PUSH_INT

call F_NEWLINE

ret
if_else_104:
if_then_104:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_ADD

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
je if_else_105
if_105:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_170
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_105:
if_then_105:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SUB

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
je if_else_106
if_106:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_171
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_106:
if_then_106:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_MUL

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
je if_else_107
if_107:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_172
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_107:
if_then_107:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_DIV

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
je if_else_108
if_108:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_173
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_174
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_175
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call SPACE

call _RDX

call COM

call SPACE

mov r11,string_176
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call DIV

call SPACE

call _RBX

call F_NEWLINE

mov r11,string_177
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_108:
if_then_108:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_MOD

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
je if_else_109
if_109:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_178
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_179
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_180
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call SPACE

call _RDX

call COM

call SPACE

mov r11,string_181
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call DIV

call SPACE

call _RBX

call F_NEWLINE

mov r11,string_182
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_109:
if_then_109:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_PRINT_INT

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
je if_else_110
if_110:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_183
add r12,8
mov [r12],r11
mov r11,11
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_184
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CALL

call SPACE

mov r11,string_185
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

call F_NEWLINE

ret
if_else_110:
if_then_110:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_TYPE

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
je if_else_111
if_111:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_186
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_187
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_188
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CALL

call SPACE

mov r11,string_189
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

ret
if_else_111:
if_then_111:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_CR

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
je if_else_112
if_112:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_190
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

call SPACE

mov r11,string_191
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

ret
if_else_112:
if_then_112:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_STACK_LEN

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
je if_else_113
if_113:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_192
add r12,8
mov [r12],r11
mov r11,11
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _RDX

call COM

call SPACE

mov r11,string_193
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _RAX

call COM

call SPACE

call _SP

call F_NEWLINE

call SUB

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_194
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _RBX

call COM

call SPACE

mov r11,string_195
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call DIV

call SPACE

call _RBX

mov r11,string_196
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

ret
if_else_113:
if_then_113:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_DUP

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
je if_else_114
if_114:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_197
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_198
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_199
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_200
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_114:
if_then_114:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_2DUP

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
je if_else_115
if_115:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_201
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_202
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_203
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_204
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_205
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_206
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_207
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_115:
if_then_115:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SWAP

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
je if_else_116
if_116:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_208
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_209
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_210
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_211
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_212
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_116:
if_then_116:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_2SWAP

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
je if_else_117
if_117:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_213
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_214
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_215
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_216
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_217
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_218
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_219
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_220
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_221
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call F_NEWLINE

ret
if_else_117:
if_then_117:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_DROP

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
je if_else_118
if_118:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_222
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

call SUB

call SPACE

call _SP

call COM

call SPACE

mov r11,string_223
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

ret
if_else_118:
if_then_118:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_OVER

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
je if_else_119
if_119:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_224
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_225
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_226
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_227
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_228
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_229
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_WRITELN

ret
if_else_119:
if_then_119:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_ROT

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
je if_else_120
if_120:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_230
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_231
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_232
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_233
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_234
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_235
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

mov r11,string_236
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_WRITELN

ret
if_else_120:
if_then_120:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IS_EQUAL

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
je if_else_121
if_121:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_237
add r12,8
mov [r12],r11
mov r11,15
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_238
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_239
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_240
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETZ

call SPACE

call _AL

call F_NEWLINE

mov r11,string_241
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_121:
if_then_121:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_NOT_EQUAL

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
je if_else_122
if_122:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_242
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_243
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_244
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_245
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETNZ

call SPACE

call _AL

call F_NEWLINE

mov r11,string_246
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_122:
if_then_122:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_GREATER

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
je if_else_123
if_123:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_247
add r12,8
mov [r12],r11
mov r11,19
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_248
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_249
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_250
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETG

call SPACE

call _AL

call F_NEWLINE

mov r11,string_251
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_123:
if_then_123:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_GREATER_EQ

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
je if_else_124
if_124:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_252
add r12,8
mov [r12],r11
mov r11,28
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_253
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_254
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_255
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETGE

call SPACE

call _AL

call F_NEWLINE

mov r11,string_256
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_124:
if_then_124:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_LESS

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
je if_else_125
if_125:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_257
add r12,8
mov [r12],r11
mov r11,16
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_258
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_259
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_260
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETL

call SPACE

call _AL

call F_NEWLINE

mov r11,string_261
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_125:
if_then_125:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_LESS_EQ

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
je if_else_126
if_126:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_262
add r12,8
mov [r12],r11
mov r11,25
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_263
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_264
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

call _RBX

call F_NEWLINE

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_265
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETLE

call SPACE

call _AL

call F_NEWLINE

mov r11,string_266
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_126:
if_then_126:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_AND

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
je if_else_127
if_127:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_267
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_127:
if_then_127:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_NOT

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
je if_else_128
if_128:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_268
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call SPACE

call COM

mov r11,string_269
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _RAX

call SPACE

call COM

mov r11,string_270
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call SETE

call SPACE

call _AL

call F_NEWLINE

mov r11,string_271
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_128:
if_then_128:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_OR

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
je if_else_129
if_129:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_272
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_129:
if_then_129:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_XOR

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
je if_else_130
if_130:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_273
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call BINARY_OP_STACK

call F_NEWLINE

ret
if_else_130:
if_then_130:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IF

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
je if_else_131
if_131:
mov r11,[r12]
sub r12,8
mov r11,string_274
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_275
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_276
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

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
mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_132
if_132:
call JNE

call SPACE

mov r11,string_277
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

jmp if_then_132
if_else_132:
call JNE

call SPACE

mov r11,string_278
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

if_then_132:
call F_NEWLINE

mov r11,string_279
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_280
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_131:
if_then_131:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_ELSE

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
je if_else_133
if_133:
mov r11,[r12]
sub r12,8
mov r11,string_281
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_282
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_133:
if_then_133:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_THEN

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
je if_else_134
if_134:
mov r11,[r12]
sub r12,8
mov r11,string_283
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_284
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_134:
if_then_134:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_WHILE

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
je if_else_135
if_135:
mov r11,[r12]
sub r12,8
mov r11,string_285
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_286
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_135:
if_then_135:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_DO

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
je if_else_136
if_136:
mov r11,[r12]
sub r12,8
mov r11,string_287
add r12,8
mov [r12],r11
mov r11,17
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_288
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call CMP

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_289
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call JE

call SPACE

mov r11,string_290
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

if_else_136:
if_then_136:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_END

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
je if_else_137
if_137:
mov r11,[r12]
sub r12,8
mov r11,string_291
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITELN

call JMP

call SPACE

mov r11,string_292
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITE

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

mov r11,string_293
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_294
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_137:
if_then_137:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_VARIABLE_REF

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
je if_else_138
if_138:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11
add r12,8
mov [r12],rcx

mov r11,string_295
add r12,8
mov [r12],r11
mov r11,22
add r12,8
mov [r12],r11

call F_WRITE

call F_WRITELN

call MOV

call SPACE

call _RAX

call COM

call SPACE

call F_WRITELN

mov r11,string_296
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

ret
if_else_138:
if_then_138:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FETCH

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
je if_else_139
if_139:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_297
add r12,8
mov [r12],r11
mov r11,18
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_298
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call SPACE

call _RAX

call COM

call SPACE

call LSQ

call _RAX

call RSQ

call F_NEWLINE

mov r11,string_299
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_139:
if_then_139:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FETCH_BYTE

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
je if_else_140
if_140:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_300
add r12,8
mov [r12],r11
mov r11,23
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_301
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call SPACE

call _RAX

call COM

call SPACE

mov r11,string_302
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call SPACE

call _AL

call COM

call SPACE

call LSQ

mov r11,string_303
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITE

call _RBX

call RSQ

call F_NEWLINE

mov r11,string_304
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_140:
if_then_140:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_DECL

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
je if_else_141
if_141:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call F_WRITE

mov r11,string_305
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

ret
if_else_141:
if_then_141:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_RET

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
je if_else_142
if_142:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_306
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITELN

call F_NEWLINE

ret
if_else_142:
if_then_142:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_CALL

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
je if_else_143
if_143:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call CALL

call SPACE

call F_WRITELN

ret
if_else_143:
if_then_143:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SYS_READ

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
je if_else_144
if_144:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_307
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_308
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_309
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call _RAX

call COM

call SPACE

mov r11,string_310
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

mov r11,string_311
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_312
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_144:
if_then_144:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SYS_WRITE

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
je if_else_145
if_145:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_313
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_314
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_315
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call _RAX

call COM

call SPACE

mov r11,string_316
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

mov r11,string_317
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_318
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_145:
if_then_145:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SYS_OPEN

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
je if_else_146
if_146:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_319
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_320
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

mov r11,string_321
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call _RAX

call COM

call SPACE

mov r11,string_322
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

mov r11,string_323
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_324
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_146:
if_then_146:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SYS_CLOSE

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
je if_else_147
if_147:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
mov r11,string_325
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call POP_REG

call MOV

call _RAX

call COM

call SPACE

mov r11,string_326
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

mov r11,string_327
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_328
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_147:
if_then_147:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_SYS_EXIT

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
je if_else_148
if_148:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
call MOV

call SPACE

call _RDI

call COM

call SPACE

mov r11,string_329
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call F_WRITELN

call MOV

call _RAX

call COM

call SPACE

mov r11,string_330
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call F_WRITELN

call CALL

mov r11,string_331
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,string_332
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_REG

call F_NEWLINE

ret
if_else_148:
if_then_148:
ret
PASS_TRANSLATE_FUNCTIONS_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_149
if_149:
mov r11,[r12]
sub r12,8
ret
if_else_149:
if_then_149:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_DECL

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
je if_else_150
if_150:
mov r11,[r12]
sub r12,8
mov r11,in_function
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
mov r11,scope_stack_len
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
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call TRANSLATE_TOKEN

call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FUNCTIONS_HELP

ret
if_else_150:
if_then_150:
mov r11,in_function
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
je if_else_151
if_151:
mov r11,[r12]
sub r12,8
call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FUNCTIONS_HELP

ret
if_else_151:
if_then_151:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IF

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
je if_else_152
if_152:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_152:
if_then_152:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_THEN

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
je if_else_153
if_153:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_153:
if_then_153:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_WHILE

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
je if_else_154
if_154:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_154:
if_then_154:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_END

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
je if_else_155
if_155:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_155:
if_then_155:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_RET

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,scope_stack_len
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
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_156
if_156:
mov r11,in_function
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
if_else_156:
if_then_156:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call TRANSLATE_TOKEN

call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FUNCTIONS_HELP

ret
PASS_TRANSLATE_FUNCTIONS:
mov r11,0
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FUNCTIONS_HELP

ret
PASS_TRANSLATE_FREE_CODE_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
cmp rcx,r11
setge r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_157
if_157:
mov r11,[r12]
sub r12,8
ret
if_else_157:
if_then_157:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_FUNC_DECL

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
je if_else_158
if_158:
mov r11,[r12]
sub r12,8
mov r11,in_function
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
mov r11,scope_stack_len
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
call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FREE_CODE_HELP

ret
if_else_158:
if_then_158:
mov r11,in_function
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
je if_else_159
if_159:
mov r11,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call TRANSLATE_TOKEN

call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FREE_CODE_HELP

ret
if_else_159:
if_then_159:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_IF

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
je if_else_160
if_160:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_160:
if_then_160:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_THEN

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
je if_else_161
if_161:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_161:
if_then_161:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_WHILE

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
je if_else_162
if_162:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_162:
if_then_162:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_END

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
je if_else_163
if_163:
mov r11,scope_stack_len
add r12,8
mov [r12],r11

mov r11,scope_stack_len
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
if_else_163:
if_then_163:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_RET

mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
cmp rcx,r11
setz r11B
movzx r11,r11B
add r12,8
mov [r12],r11
mov r11,scope_stack_len
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
mov rcx,[r12]
sub r12,8
mov r11,[r12]
sub r12,8
AND r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_164
if_164:
mov r11,in_function
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
if_else_164:
if_then_164:
mov r11,[r12]
sub r12,8
call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FREE_CODE_HELP

ret
PASS_TRANSLATE_FREE_CODE:
mov r11,0
add r12,8
mov [r12],r11

call PASS_TRANSLATE_FREE_CODE_HELP

ret
PASS_TRANSLATE_BSS_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_165
if_165:
mov r11,[r12]
sub r12,8
ret
if_else_165:
if_then_165:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,[r11]
add r12,8
mov [r12],r11

call TOKEN_MEM_DECL

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
je if_else_166
if_166:
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call F_WRITE

mov r11,string_333
add r12,8
mov [r12],r11
mov r11,6
add r12,8
mov [r12],r11

call F_WRITE

mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITELN

jmp if_then_166
if_else_166:
mov r11,[r12]
sub r12,8
if_then_166:
call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_BSS_HELP

ret
PASS_TRANSLATE_BSS:
mov r11,string_334
add r12,8
mov [r12],r11
mov r11,12
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,0
add r12,8
mov [r12],r11

call PASS_TRANSLATE_BSS_HELP

ret
PASS_TRANSLATE_DATA_HELP:
mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct_len
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
mov r11,[r12]
sub r12,8
cmp r11,0
je if_else_167
if_167:
mov r11,[r12]
sub r12,8
ret
if_else_167:
if_then_167:
mov rdx,0
mov rax,r12
sub rax,the_stack
mov r11,8
idiv r11
add r12,8
mov [r12],rax
mov rdi,[r12]
sub r12,8
call print_int

call print_newline

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,token_struct
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
call TOKEN_VARIABLE_DECL

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
je if_else_168
if_168:
mov r11,[r12]
sub r12,8
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
mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call F_WRITE

mov r11,string_335
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call F_WRITELN

jmp if_then_168
if_else_168:
call TOKEN_STRING_LITERAL

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
je if_else_169
if_169:
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
mov r11,string_336
add r12,8
mov [r12],r11
mov r11,7
add r12,8
mov [r12],r11

call F_WRITE

mov r11,[r12]
sub r12,8
add r12,8
mov [r12],r11
add r12,8
mov [r12],r11
mov r11,40
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

mov r11,int_to_string_buffer
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

call INT_TO_STRING

call F_WRITE

mov r11,string_337
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call F_WRITE

mov r11,24
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
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
add r12,8
mov [r12],rcx
add r12,8
mov [r12],r11

mov r11,32
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

mov r11,[r12]
sub r12,8
mov r11,[r11]
add r12,8
mov [r12],r11

call F_WRITE

mov r11,string_338
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call F_WRITELN

if_else_169:
if_then_169:
if_then_168:
call TOKEN_STRUCT_SIZE

mov r11,[r12]
sub r12,8
mov rcx,[r12]
sub r12,8
add r11,rcx
add r12,8
mov [r12],r11

call PASS_TRANSLATE_DATA_HELP

ret
PASS_TRANSLATE_DATA:
mov r11,string_339
add r12,8
mov [r12],r11
mov r11,13
add r12,8
mov [r12],r11

call F_WRITELN

mov r11,0
add r12,8
mov [r12],r11

call PASS_TRANSLATE_DATA_HELP

ret
