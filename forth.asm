section .data
    ; define bytes with pointer named "text", 10 is newline
    input_filename_str db "./test-programs/add.forth", 0
    output_filename_str db "out.asm", 0

    test_str db "12345"

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

%include "std.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

str_to_int:
    ; rdi -> string
    ; rsi -> length

    mov rax, 0
    mov r11, 0
    mov r8,  0

str_to_int_loop:
    mov r8B, byte [rdi + r11]
    sub r8B, 48

    add rax, r8

    inc r11
    cmp r11, rsi
    je str_to_int_end

    imul rax, 10
    jmp str_to_int_loop

str_to_int_end:
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
forth_parse_token:
    push r12
    push r13
    push r14

    ; rdi -> address
    ; rsi -> length
    ; rdx -> file descriptor
    mov r12, rdi
    mov r13, rsi
    mov r14, rdx

    call str_is_int

    cmp rax, 0
    je forth_parse_token_str

forth_parse_token_int:

    jmp forth_parse_token_end

forth_parse_token_str:

forth_parse_token_end:
    pop r14
    pop r13
    pop r12

    ret

_start:
    ; open the file
    mov rax, 2
    mov rdi, input_filename_str
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
    mov rdi, test_str
    mov rsi, 5
    call str_to_int

    mov rdi, rax
    call print_int

     ;;; exit
    mov rax, 60
    ; code
    mov rdi, 0
    syscall
