section .bss
block resb 1024

section .data
section .text
thing:
; Push integer: 3
mov rax, 3
; push rax
mov [r12], rax
add r12, 8

; Push integer: 4
mov rax, 4
; push rax
mov [r12], rax
add r12, 8

; mul
; pop rbx
mov rbx, [r12]
sub r12, 8
; pop rax
mov rax, [r12]
sub r12, 8
mul rax, rbx
; push rax
mov [r12], rax
add r12, 8

ret


global _start

_start:
; Push integer: 1
mov rax, 1
; push rax
mov [r12], rax
add r12, 8

; Push integer: 2
mov rax, 2
; push rax
mov [r12], rax
add r12, 8

; add
; pop rbx
mov rbx, [r12]
sub r12, 8
; pop rax
mov rax, [r12]
sub r12, 8
add rax, rbx
; push rax
mov [r12], rax
add r12, 8

; exit
mov rax, 60
mov rdi, 0
syscall
