section .data
    ; define bytes with pointer named "text", 10 is newline
    filename_str db "./test-programs/add.forth", 0
    newline_str db 10

    ; ;modes
    ; O_RDONLY: db 0        ;read-only
    ; O_WRONLY: db 1        ;wirte-only
    ; O_RDWR:   db 2        ;read and write

    ; ;flags
    ; O_CREAT:  dw 100o     ;create file if file doesnt exists
    ; O_TRUNC:  dw 1000o    ;truncate file
    ; O_APPEND: dw 2000o    ;append to file

section .bss
    read_buff resb 1024
    int_to_string_buff resb 32

section .text
    ; global exports the method 
    global _start

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

print_newline:
    mov rdx, 1
    mov rsi, newline_str

    mov rax, 1
    mov rdi, 1
    syscall

    ret

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

str_skip_whitespace:
    ; rdi -> string
    ; rsi -> length

    ; r11 -> index
    mov r11, 0

str_skip_whitespace_loop:
    mov r8B, [rdi + r11]

    cmp r8B, 32
    je str_skip_whitespace_loop_end
    cmp r8B, 10
    je str_skip_whitespace_loop_end

    mov rax, r11
    jmp str_skip_whitespace_end
    
str_skip_whitespace_loop_end:
    inc r11
    cmp r11, rsi
    jne str_skip_whitespace_loop

    mov rax, -1
str_skip_whitespace_end:
    ret

str_skip_to_whitespace:
    ; rdi -> string
    ; rsi -> length

    ; r11 -> index
    mov r11, 0

str_skip_to_whitespace_loop:
    mov r8B, [rdi + r11]

    cmp r8B, 32
    je str_skip_to_whitespace_found
    cmp r8B, 10
    je str_skip_to_whitespace_found

    ; not whitespace, go to next character
    inc r11
    cmp r11, rsi
    jne str_skip_to_whitespace_loop

    ; end of length
    mov rax, -1
    jmp str_skip_to_whitespace_end

str_skip_to_whitespace_found:
    mov rax, r11

str_skip_to_whitespace_end:
    ret

forth_parse_token:
    push r12
    push r13

    ; rdi -> address
    ; rsi -> length
    mov r12, rdi
    mov r13, rsi

    call str_is_int

    cmp rax, 0
    je forth_parse_token_str

forth_parse_token_int:

    jmp forth_parse_token_end

forth_parse_token_str:

forth_parse_token_end:
    pop r13
    pop r12

    ret

_start:
    ; open the file
    mov rax, 2
    mov rdi, filename_str
    mov rsi, 0
    mov rdx, 0
    syscall

    ; read content into buffer
    mov rdi, rax

    mov rax, 0
    mov rsi, read_buff
    mov rdx, 1024
    syscall

    mov r13, rax

    ; print the buffer
    mov rdi, read_buff
    mov rsi, rax
    call print

    ; parse the buffer
    mov r12, read_buff

    ; r12 -> address
    ; r13 -> length
parse:
    mov rdi, r12
    mov rsi, r13

    call str_skip_whitespace

    cmp rax, -1
    je parse_end

    add r12, rax
    sub r13, rax

    ; compare first character to "
    mov r8B, byte [r12]
    cmp r8B, 34
    jne parse_not_str

    ; first character is a quote. Parsing string

    ; address
    mov rdi, r12
    ; offset by 1 to skip first character
    add rdi, 1
    ; length
    mov rsi, r13
    sub rsi, 1
    ; quote
    mov dl, 34
    
    call str_search_char
    cmp rax, -1
    je parse_token_found

    ; account for the original offset
    ; also skip to the whitespace after the quote
    add rax, 2
    jmp parse_token_found

parse_not_str:
    ; address
    mov rdi, r12
    ; length
    mov rsi, r13

    call str_skip_to_whitespace

parse_token_found:
    cmp rax, -1
    je parse_end

    push rax
        mov rdi, r12
        mov rsi, rax

        call print

        ;mov rdi, newline_str
        ;mov rsi, 1
        ;call print
        call print_newline
        ; call forth_parse_token 
    pop rax

    add r12, rax
    sub r13, rax

    cmp r13, 0
    jne parse
    
parse_end:
     ;;; exit
    mov rax, 60
    ; code
    mov rdi, 0
    syscall
