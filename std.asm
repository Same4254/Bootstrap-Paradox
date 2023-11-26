section .data
    newline_str db 10

section .bss
    int_to_string_buff resb 32

section .text

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> ptr dst
; rsi -> ptr src
; rdx -> length
memcpy:
    ; index
    mov r11, 0
    cmp rdx, r11
    je memcpy_end

memcpy_loop:
    mov r8B, byte [rsi + r11]
    mov byte [rdi + r11], r8B

    inc r11

memcpy_loop_check:
    cmp rdx, r11
    jne memcpy_loop

memcpy_end:
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> string 1
; rsi -> string 1 length
; rdx -> string 2
; rcx -> string 2 length 
str_ncmp:
    ; r11 -> index
    mov r11, 0

    cmp rsi, rcx
    je loop

    ; if length are not equal, quit
    mov rax, 0
    jmp out

loop:
    ; match each byte against each other
    mov cl, byte [rdi + r11]
    mov r8b,  byte [rdx + r11]

    cmp cl, r8b
    je check
    
    mov rax, 0
    jmp out

check:
    inc r11
    cmp r11, rsi
    jne loop
    
    mov rax, 1
out:
    ret 
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

str_search_char:
    ; rdi -> str
    ; rsi -> str_len
    ; dl -> character
    mov r11, 0
    mov rax, -1

loop_1:
    cmp dl, byte [rdi + r11]
    jne check_1
    
    mov rax, r11
    jmp out_1

check_1:
    inc r11
    cmp r11, rsi
    jne loop_1

out_1:
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

str_reverse:
    ; rdi -> string
    ; rsi -> length

    cmp rsi, 0
    je str_reverse_end

    cmp rsi, 1
    je str_reverse_end

    mov rax, rsi
    mov r11, 2

    mov rdx, 0
    div r11

    mov r11, 0
    mov r8, rsi
    dec r8

str_reverse_loop:
    mov cl, [rdi + r11]
    mov bl, [rdi + r8]

    mov [rdi + r11], bl
    mov [rdi + r8], cl
    
    inc r11
    dec r8

    cmp rax, r11
    jne str_reverse_loop

str_reverse_end:
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print:
    ; rdi -> *str
    ; rsi -> length
    mov rdx, rsi
    mov rsi, rdi
    
    ; sys_write
    mov rax, 1
    ; stdout
    mov rdi, 1
    syscall
    
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print_newline:
    mov rdx, 1
    mov rsi, newline_str

    mov rax, 1
    mov rdi, 1
    syscall

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> integer
; rsi -> buffer
;
; Output
; rax -> length
int_to_string:
    ; r11 -> length

    mov rax, rdi

    cmp rax, 0
    jge int_to_string_abs

    mov r8, -1
    mul r8

int_to_string_abs:

    mov r11, 0
    mov r8, 10

    cmp rax, 0
    jne int_to_string_loop

    inc r11
    mov byte [int_to_string_buff], 48
    
    jmp int_to_string_end

int_to_string_loop:
    mov rdx, 0
    div r8

    add dl, 48
    mov byte [int_to_string_buff + r11], dl
    inc r11

    cmp rax, 0
    jne int_to_string_loop

int_to_string_sign:
    cmp rdi, 0
    jge int_to_string_end

    mov dl, 45
    mov byte [int_to_string_buff + r11], dl
    inc r11

int_to_string_end:
    push r11

    mov rdi, int_to_string_buff
    mov rsi, r11
    call str_reverse

    pop r11
    mov rax, r11

    ; mov rdi, int_to_string_buff
    ; mov rsi, r11
    ; call print

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> integer
print_int:
    mov rsi, int_to_string_buff
    call int_to_string

    mov rdi, int_to_string_buff
    mov rsi, rax
    call print

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
str_is_int:
    ; rdi -> string
    ; rsi -> length

    mov r11, 0
    mov rax, 0

str_is_int_loop:
    mov dl, byte [rdi + r11]

    cmp dl, 48
    jl str_is_int_end
    cmp dl, 57
    jg str_is_int_end

    inc r11
    cmp r11, rsi
    jne str_is_int_loop

    mov rax, 1
str_is_int_end:
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Forth Bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TYPE:
    ; pop off the return address to get a "clean" version of the stack
    add rsp, 8
    ; get the address and length off the stack
    pop rsi
    pop rdi

    call print

    sub rsp, 8
    ret
