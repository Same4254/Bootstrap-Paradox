;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

str_ncmp:
    ; rdi -> *str1
    ; rsi -> *str2
    ; rdx -> length

    ; r11 -> index
    mov r11, 0

loop:
    mov cl, byte [rdi + r11]
    mov r8b,  byte [rsi + r11]

    cmp cl, r8b
    je check
    
    mov rax, 0
    jmp out

check:
    inc r11
    cmp r11, rdx
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
print_int:
    ; rdi -> integer
    ; r11 -> length

    mov rax, rdi

    cmp rax, 0
    jge print_int_abs

    mov r8, -1
    mul r8

print_int_abs:

    mov r11, 0
    mov r8, 10

    cmp rax, 0
    jne print_int_loop

    inc r11
    mov byte [int_to_string_buff], 48
    
    jmp print_int_end

print_int_loop:
    mov rdx, 0
    div r8

    add dl, 48
    mov byte [int_to_string_buff + r11], dl
    inc r11

    cmp rax, 0
    jne print_int_loop

print_int_sign:
    cmp rdi, 0
    jge print_int_end

    mov dl, 45
    mov byte [int_to_string_buff + r11], dl
    inc r11

print_int_end:
    push r11

    mov rdi, int_to_string_buff
    mov rsi, r11
    call str_reverse

    pop r11

    mov rdi, int_to_string_buff
    mov rsi, r11
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

