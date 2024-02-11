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
call TOKEN_ADD

mov r11,string_1
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SUB

mov r11,string_2
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_MUL

mov r11,string_3
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_DIV

mov r11,string_4
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_MOD

mov r11,string_5
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_PRINT_INT

mov r11,string_6
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_TYPE

mov r11,string_7
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_CR

mov r11,string_8
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_STACK_LEN

mov r11,string_9
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_DUP

mov r11,string_10
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_2DUP

mov r11,string_11
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SWAP

mov r11,string_12
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_2SWAP

mov r11,string_13
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_DROP

mov r11,string_14
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_2DROP

mov r11,string_15
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_OVER

mov r11,string_16
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_ROT

mov r11,string_17
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_IS_EQUAL

mov r11,string_18
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_NOT_EQUAL

mov r11,string_19
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_GREATER

mov r11,string_20
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_GREATER_EQ

mov r11,string_21
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_LESS

mov r11,string_22
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_LESS_EQ

mov r11,string_23
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_AND

mov r11,string_24
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_NOT

mov r11,string_25
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_OR

mov r11,string_26
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_XOR

mov r11,string_27
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_IF

mov r11,string_28
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_ELSE

mov r11,string_29
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_THEN

mov r11,string_30
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_WHILE

mov r11,string_31
add r12,8
mov [r12],r11
mov r11,5
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_DO

mov r11,string_32
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_END

mov r11,string_33
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_VARIABLE_DECL

mov r11,string_34
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_MEM_DECL

mov r11,string_35
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_FETCH

mov r11,string_36
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_FETCH_B

mov r11,string_37
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_STORE

mov r11,string_38
add r12,8
mov [r12],r11
mov r11,1
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_STORE_B

mov r11,string_39
add r12,8
mov [r12],r11
mov r11,2
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_FUNC_DECL

mov r11,string_40
add r12,8
mov [r12],r11
mov r11,4
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_RET

mov r11,string_41
add r12,8
mov [r12],r11
mov r11,3
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SYS_READ

mov r11,string_42
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SYS_WRITE

mov r11,string_43
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SYS_OPEN

mov r11,string_44
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SYS_CLOSE

mov r11,string_45
add r12,8
mov [r12],r11
mov r11,9
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

call TOKEN_SYS_EXIT

mov r11,string_46
add r12,8
mov [r12],r11
mov r11,8
add r12,8
mov [r12],r11

call PUSH_TOKEN_NAME

mov r11,string_72
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
mov r11,string_73
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
call F_FILL_BUFFER

call print_newline

mov r11,string_123
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

call print_newline

call PASS_1

call PRINT_TOKENS

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

call print_newline

mov r11,string_124
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

call print_newline

call PASS_2

call PRINT_TOKENS

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

; exit
mov rax, 60
mov rdi, 0
syscall
