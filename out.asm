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

call -123

mov rdi,[r12]
sub r12,8
call print_int

call print_newline

; exit
mov rax, 60
mov rdi, 0
syscall
