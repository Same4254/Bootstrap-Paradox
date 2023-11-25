%include "strings.asm"
%include "std.asm"

section .data
    newline_str db 10

section .bss
    int_to_string_buff resb 32

section .text
    global _start

_start:
mov r11,1
push r11

mov r11,2
push r11

pop r11
pop rcx
add rcx,r11
push rcx

pop rdi
call print_int

call print_newline

mov r11,7
push r11

mov r11,3
push r11

pop r11
pop rcx
add rcx,r11
push rcx

pop rdi
call print_int

call print_newline

mov r11,5
push r11

mov r11,7
push r11

pop r11
pop rcx
add rcx,r11
push rcx

pop rdi
call print_int

call print_newline

; exit
mov rax, 60
mov rdi, 0
syscall
