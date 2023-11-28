section .data
    ; define bytes with pointer named "text", 10 is newline
    input_filename_str db "./test-programs/add.forth", 0
    output_filename_str db "out.asm", 0
    strings_filename_str db "strings.asm", 0

    template_str db "%include ", 34, "strings.asm", 34, 10, "%include ", 34, "std.asm", 34, 10, 10, "section .bss", 10, "the_stack resb 1024", 10, 10, "section .text", 10, "    global _start", 10, 10, "_start:", 10, "mov r12, the_stack", 10, 10

    end_template_str db "; exit", 10, "mov rax, 60", 10, "mov rdi, 0", 10, "syscall", 10

    str_file_template_str db "section .data", 10

    begin_parse_str db "Begin Parsing!", 10

    token_func_decl_str db "TOKEN [Func Decl] : "
    token_func_ret_str  db "TOKEN [Func Ret]  : "
    token_func_call_str db "TOKEN [Func Call] : "
    token_literal_str   db "TOKEN [Literal]   : "
    token_int_str       db "TOKEN [Int]       : "

    comma_str db ","
    space_str db " "

    ;;; ASM function strings
    plus_str db "+"
    add_str db "add"
    sub_str db "sub"

    ;;; FORTH function strings
    ; these are functions that are moreso macros to a native call
    TYPE_str db "TYPE"
    DUP_str db "DUP"
    two_DUP_str db "2DUP"
    CR_str db "CR"
    print_int_forth_str db "."

    ;;; NATIVE function strings
    print_asm_str db "print"
    print_int_asm_str db "print_int"
    print_newline_str db "print_newline"

    ;;; instruction strings
    mov_str  db "mov"
    push_str db "push"
    pop_str  db "pop"
    call_str db "call"
    db_str   db "db"

    ;;; register strings
    r11_str db "r11"
    r12_str db "r12"
    rcx_str db "rcx"
    rdi_str db "rdi"
    rsi_str db "rsi"

    ;;; stack access strings
    stack_access_current_str db "[r12]"
    eight_str db "8" ; used to increment stack_ptr

    ;;; string define name
    str_name_str db "string_"

    ; ;modes
    ; O_RDONLY: db 0        ;read-only
    ; O_WRONLY: db 1        ;wirte-only
    ; O_RDWR:   db 2        ;read and write

    ; ;flags
    ; O_CREAT:  dw 100o     ;create file if file doesnt exists
    ; O_TRUNC:  dw 1000o    ;truncate file
    ; O_APPEND: dw 2000o    ;append to file

section .bss
    ; buffer for reading the input forth file
    read_buff resb 1024

    ; used to build name strings
    ; usually append a number to the name
    ; requires a temporary space to build
    string_build_buff resb 1024

section .text
    ; global exports the method 
    global _start

%include "std.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> string
; rsi -> length
;
; Output
; rax -> index of the first non-whitespace character
;        -1 otherwise
str_skip_whitespace:
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
; Input
; rdi -> fp
; rsi -> buffer
; rdx -> length
write_str_to_file:
    ; we take abstraction where we can...
    mov rax, 1
    syscall

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; rdi -> fp
write_newline_to_file:
    mov rax, 1
    mov rsi, newline_str
    mov rdx, 1
    syscall

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; 
; rsi -> arg1 string ptr
; rdx -> arg1 string length
; 
; rcx -> arg2 string ptr
; r8  -> arg2 string length
write_mov_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, mov_str
    mov rdx, 3

    call write_two_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> register name string
; rdx -> register name length
write_push_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, push_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> register name string
; rdx -> register name length
write_pop_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, pop_str
    mov rdx, 3
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> function name string
; rdx -> function name length
write_call_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, call_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
;
; rsi -> arg1 string
; rdx -> arg1 length
;
; rcx -> arg2 string
; r8  -> arg2 length
write_add_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, add_str
    mov rdx, 3

    call write_two_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
;
; rsi -> arg1 string
; rdx -> arg1 length
;
; rcx -> arg2 string
; r8  -> arg2 length
write_sub_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, sub_str
    mov rdx, 3

    call write_two_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; 
; rsi -> instruction string ptr
; rdx -> instruction string length
; 
; rcx -> arg1 string ptr
; r8  -> arg1 string length
write_one_arg_inst:
    push r12
    mov r12, rdi

    push rcx
    push r8
        ; write the instruction name
        call write_str_to_file

        ; write space
        mov rdi, r12
        mov rsi, space_str
        mov rdx, 1
        call write_str_to_file

    pop rdx
    pop rsi 

    ; write arg
    mov rdi, r12
    call write_str_to_file

    mov rdi, r12
    call write_newline_to_file

    pop r12
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; 
; rsi -> instruction string ptr
; rdx -> instruction string length
; 
; rcx -> arg1 string ptr
; r8  -> arg1 string length
;
; r9  -> arg2 string ptr
; r10 -> arg2 string length
write_two_arg_inst:
    push r12
    mov r12, rdi

    push rcx
    push r8
    push r9
    push r10
        ; write the instruction name
        call write_str_to_file

        ; write space
        mov rdi, r12
        mov rsi, space_str
        mov rdx, 1
        call write_str_to_file

        ; write arg 1
        mov rdi, r12
        mov rsi, [rsp + 24]
        mov rdx, [rsp + 16]
        call write_str_to_file

        ; write comma
        mov rdi, r12
        mov rsi, comma_str
        mov rdx, 1
        call write_str_to_file

    ; write arg 2
    mov rdi, r12
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_str_to_file

    mov rdi, r12
    call write_newline_to_file

    pop rdx
    pop rsi 
    pop rdx
    pop rsi 

    pop r12
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Pushes a value onto the *Forth Stack*
; Input
; rdi -> fp
; rsi -> register name string
; rdx -> register name length
write_forth_stack_push_to_file:
    ; increment stack pointer
    push rdi
    push rsi 
    push rdx
        mov rsi, r12_str
        mov rdx, 3
        mov rcx, eight_str
        mov r8,  1
        call write_add_to_file
    pop r8
    pop rcx
    pop rdi

    ; mov value onto the stack
    mov rsi, stack_access_current_str
    mov rdx, 5
    call write_mov_to_file

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Pops a value from the *Forth Stack*
; Input
; rdi -> fp
; rsi -> register name string
; rdx -> register name length
write_forth_stack_pop_to_file:
    push rdi
        ; mov value from stack to register
        mov rcx, stack_access_current_str
        mov r8, 5
        call write_mov_to_file
    pop rdi

    ; decrement stack pointer
    mov rsi, r12_str
    mov rdx, 3
    mov rcx, eight_str
    mov r8,  1
    call write_sub_to_file

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; forth_parse_token:
;     push r12
;     push r13
;     push r14
; 
;     ; rdi -> address
;     ; rsi -> length
;     ; rdx -> file descriptor
;     mov r12, rdi
;     mov r13, rsi
;     mov r14, rdx
; 
;     call str_is_int
; 
;     cmp rax, 0
;     je forth_parse_token_str
; 
; forth_parse_token_int:
; 
;     jmp forth_parse_token_end
; 
; forth_parse_token_str:
; 
; forth_parse_token_end:
;     pop r14
;     pop r13
;     pop r12
; 
;     ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> address of string buffer
; rsi -> length
;
; TODO: this must also manage the buffer and buffer length
;
; Return
; rax -> pointer to the start of the token
; rdx -> length of the token
; 
; In the event that there is no token to grab:
;  rax (pointer) -> 0
;  rdx (length)  -> 0
forth_grab_token:
    push r12
    push r13

    mov r12, rdi
    mov r13, rsi

    call str_skip_whitespace
    cmp rax, -1
    je forth_grab_token_end

    ; set the pointer to the start of the token
    ; adjust the length to account for start of token
    add r12, rax
    sub r13, rax

    mov r8B, byte [r12]

    ; compare first character to "
    cmp r8B, 34
    je forth_grab_token_literal

    ; compare first character to (
    cmp r8B, 40
    je forth_grab_token_comment

    jmp forth_grab_token_default

forth_grab_token_literal:
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
    je forth_grab_token_literal_notfound

forth_grab_token_literal_found:
    ; account for the original offset +1
    ; rax is index to end quote, +1 for length
    add rax, 2

    mov rdx, rax
    mov rax, r12

    jmp forth_grab_token_end

forth_grab_token_literal_notfound:
    mov rax, 0
    mov rdx, 0

    jmp forth_grab_token_end

forth_grab_token_comment:
    ; TODO
    jmp forth_grab_token_end

forth_grab_token_default:
    mov rdi, r12
    mov rsi, r13
    call str_skip_to_whitespace

    cmp rax, -1
    je forth_grab_token_default_notfound

forth_grab_token_default_found:
    mov rdx, rax
    mov rax, r12

    jmp forth_grab_token_end

forth_grab_token_default_notfound:
    mov rax, 0
    mov rdx, 0
    jmp forth_grab_token_end

forth_grab_token_end:
    pop r13
    pop r12

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fd
; rsi -> val
forth_translate_pushval:
    push r12
    push r13

        mov r12, rdi
        
        ; parse the value into a string
        mov rsi, rdi
        call int_to_string

        mov r13, rax

        ; write "mov r11, " to the file

        mov rax, 1
        mov rdi, r12
        mov rsi, int_to_string_buff
        mov rdx, r13
        syscall
    
    pop r13
    pop r12

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

    mov r12, read_buff
    mov r13, rax

    ; print the buffer
    ; mov rdi, read_buff
    ; mov rsi, rax
    ; call print

    ; open output file, O_CREAT, O_RDWR, 777 permissions
    mov rax, 2
    mov rdi, output_filename_str
    mov rsi, 0100o
    or  rsi, 2
    mov rdx, 777o
    syscall

    mov r14, rax

    ; open string file, O_CREAT, O_RDWR, 777 permissions
    mov rax, 2
    mov rdi, strings_filename_str
    mov rsi, 0100o
    or  rsi, 2
    mov rdx, 777o
    syscall

    mov r15, rax

    ; Write start of code output file
    mov rax, 1
    mov rdi, r14
    mov rsi, template_str
    mov rdx, 138
    syscall

    ; Write start of str file
    mov rax, 1
    mov rdi, r15
    mov rsi, str_file_template_str
    mov rdx, 14
    syscall

    mov rdi, begin_parse_str
    mov rsi, 15
    call print

    mov r8, 0
    push r8

    ; parse the buffer
    ; r12 -> input buffer pointer
    ; r13 -> input buffer length
    ; r14 -> code output file
    ; r15 -> strings file

    ; stack
    ; num strings (0)
parse:
    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; rax -> token address
    ; rdx -> token length

    ; check if any token was grabbed
    cmp rax, 0
    je end

    mov r8B, byte [rax]

    ; check if first character is a quote
    cmp r8B, 34
    je parse_literal

    ; check if first character is a colon and the length is 1
    ; (function declaration)
    cmp r8B, 58
    jne parse_notfunc_decl

    cmp rdx, 1
    jne parse_notfunc_decl

    jmp parse_func_decl

parse_notfunc_decl:
    ; check if semi-colon for ending the function call
    cmp r8B, 59
    jne parse_notfunc_ret

    cmp rdx, 1
    jne parse_notfunc_ret

    jmp parse_func_ret

parse_notfunc_ret:
    ; not a function declaration, or string literal, or function return
    ; must be a number or a function call
    push rax
    push rdx
        mov rsi, rdx
        mov rdi, rax
        call str_is_int

        cmp rax, 1
    pop rdx
    pop rax

    je parse_int

    ; not a number, must be a function call
    jmp parse_func_call

parse_func_decl:    
    ; this is a function decl, get the next token for the name of the function
    ; being declared

    ; move the pointer to the start of the token
    mov r12, rax
    ; move the pointer to the end of the token
    add r12, rdx
    ; subtract the length of the token to the total length of the buffer 
    sub r13, rdx

    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; print
    push rax
    push rdx
        mov rdi, token_func_decl_str
        mov rsi, 20
        call print

        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        call print

        call print_newline
    pop rdx
    pop rax

    jmp parse_loop_end

parse_func_ret:
    ; print
    push rax
    push rdx
        mov rdi, token_func_ret_str
        mov rsi, 20
        call print

        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        call print

        call print_newline
    pop rdx
    pop rax

    jmp parse_loop_end

parse_func_call:
    ; print
    push rax
    push rdx
        mov rdi, token_func_call_str
        mov rsi, 20
        call print

        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        call print

        call print_newline
    pop rdx
    pop rax

    push rax
    push rdx
        ; check if the function being called is +
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, plus_str
        mov rcx, 1
        call str_ncmp
        cmp rax, 1
        je parse_func_call_add

        ; check if the function being called is .
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, print_int_forth_str
        mov rcx, 1
        call str_ncmp
        cmp rax, 1
        je parse_func_call_printint

        ; check if the function being called is TYPE
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, TYPE_str
        mov rcx, 4
        call str_ncmp
        cmp rax, 1
        je parse_func_call_TYPE

        ; check if the function being called is DUP
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, DUP_str
        mov rcx, 3
        call str_ncmp
        cmp rax, 1
        je parse_func_call_DUP

        ; check if the function being called is DUP
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, two_DUP_str
        mov rcx, 4
        call str_ncmp
        cmp rax, 1
        je parse_func_call_2DUP

        ; check if the function being called is TYPE
        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        mov rdx, CR_str
        mov rcx, 2
        call str_ncmp
        cmp rax, 1
        je parse_func_call_CR

        jmp parse_func_call_default

parse_func_call_printint:
    ; pop r11
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; call print_int
    mov rdi, r14
    mov rsi, print_int_asm_str
    mov rdx, 9
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file

    ; call print_int
    mov rdi, r14
    mov rsi, print_newline_str
    mov rdx, 13
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file
    
    jmp parse_func_call_end

parse_func_call_add:
    ; pop r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop rcx
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; add r11, rcx
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_add_to_file

    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file
    
    mov rdi, r14
    call write_newline_to_file

    jmp parse_func_call_end

parse_func_call_TYPE:
    ; pop the string length off of the stack
    mov rdi, r14
    mov rsi, rsi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop the string address off of the stack
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; call print
    mov rdi, r14
    mov rsi, print_asm_str
    mov rdx, 5
    call write_call_to_file
    
    mov rdi, r14
    call write_newline_to_file

    jmp parse_func_call_end

parse_func_call_DUP:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; push to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (again)
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_func_call_end

parse_func_call_2DUP:
    ; pop top value
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file


    ; push to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (again)
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file


    ; push to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (again)
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_func_call_end

parse_func_call_CR:
    mov rdi, r14
    mov rsi, print_newline_str
    mov rdx, 13
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_func_call_end
parse_func_call_default:
    ; the name is a function that was previously defined. Call it
    mov rdi, r14
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_func_call_end

parse_func_call_end:
    pop rdx
    pop rax

    jmp parse_loop_end

parse_literal:
    ; print
    push rax
    push rdx
        mov rdi, token_literal_str
        mov rsi, 20
        call print

        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        call print

        call print_newline
    pop rdx
    pop rax

    ; write "string_"
    push rax
    push rdx
        ; mov rdi, r15
        ; mov rsi, str_name_str
        ; mov rdx, 7
        ; call write_str_to_file

        ; ; convert the number of counted strings to a string
        ; mov rdi, [rsp + 16]
        ; mov rsi, int_to_string_buff
        ; call int_to_string

        ; ; write the number after the underscore to make the name unique
        ; mov rdi, r15
        ; mov rsi, int_to_string_buff
        ; mov rdx, rax
        ; call write_str_to_file
        
        ; copy "string_" into the string build buffer
        mov rdi, string_build_buff
        mov rsi, str_name_str
        mov rdx, 7
        call memcpy

        ; convert the number of counted strings to a string
        mov rdi, [rsp + 16]
        mov rsi, int_to_string_buff
        call int_to_string

        ; add the number after the underscore
        mov rdi, string_build_buff
        add rdi, 7 ; accounts for the length of the existing string
        mov rsi, int_to_string_buff
        mov rdx, rax

        ; increment the number of string literals seen (to keep names unique)
        inc qword [rsp + 16]

        ; save the length of the integer string
        push rdx
            call memcpy

            ; add the length of the prefix "string_"
            add qword [rsp], 7

            ; write the string
            mov rdi, r15
            mov rsi, string_build_buff
            mov rdx, [rsp]
            call write_str_to_file

            ; write a space
            mov rdi, r15
            mov rsi, space_str
            mov rdx, 1
            call write_str_to_file

            ; write "db"
            mov rdi, r15
            mov rsi, db_str
            mov rdx, 2
            call write_str_to_file

            ; write a space
            mov rdi, r15
            mov rsi, space_str
            mov rdx, 1
            call write_str_to_file

            ; write the string literal
            mov rdi, r15
            mov rsi, [rsp + 16]
            mov rdx, [rsp + 8]
            call write_str_to_file

            mov rdi, r15
            call write_newline_to_file

            ; the string has been allocated, now we may reference the address
            ; write "mov r11, string_build_buff"
            mov rdi, r14
            mov rsi, r11_str
            mov rdx, 3
            mov rcx, string_build_buff
            mov r8 , [rsp] ; length was put onto the stack after the tostring was computed
            call write_mov_to_file

            ; push the address onto the stack
            mov rdi, r14
            mov rsi, r11_str
            mov rdx, 3
            call write_forth_stack_push_to_file

            ; convert the length of the string (an integer) into a string
            mov rdi, [rsp + 8] ; length was put onto the stack
            sub rdi, 2 ; remove 2 because this includes both of the quotes
            mov rsi, int_to_string_buff
            call int_to_string

            ; load the length of the string onto register
            mov rdi, r14
            mov rsi, r11_str
            mov rdx, 3
            mov rcx, int_to_string_buff
            mov r8 , rax
            call write_mov_to_file

            ; push onto the stack
            mov rdi, r14
            mov rsi, r11_str
            mov rdx, 3
            call write_forth_stack_push_to_file

            mov rdi, r14
            call write_newline_to_file
        pop rdx
    pop rdx
    pop rax

    jmp parse_loop_end

parse_int:
    ; print
    push rax
    push rdx
        mov rdi, token_int_str
        mov rsi, 20
        call print

        mov rdi, [rsp + 8]
        mov rsi, [rsp]
        call print

        call print_newline
    pop rdx
    pop rax

    ;;; load the value into a register and push it onto stack
    push rax
    push rdx
        mov rdi, r14
        mov rsi, r11_str
        mov rdx, 3
        mov rcx, [rsp + 8]
        mov r8,  [rsp]
        call write_mov_to_file 

        mov rdi, r14
        mov rsi, r11_str
        mov rdx, 3
        call write_forth_stack_push_to_file

        mov rdi, r14
        call write_newline_to_file
    pop rdx
    pop rax

    jmp parse_loop_end

parse_loop_end:
    ; move the pointer to the start of the token
    mov r12, rax
    ; move the pointer to the end of the token
    add r12, rdx

    ; subtract the length of the token to the total length of the buffer 
    sub r13, rdx
    jmp parse

    ; mov rdi, r12
    ; mov rsi, r13

    ; call forth_grab_token

    ; ; move the pointer ahead
    ; mov r12, rax
    ; add r12, rdx
    ; sub r13, rdx

    ; mov rdi, rax
    ; mov rsi, rdx

    ; call print

    ; mov rdi, r12
    ; mov rsi, r13

    ; call forth_grab_token

    ; mov rdi, rax
    ; mov rsi, rdx

    ; call print

; parse:
;     mov rdi, r12
;     mov rsi, r13
; 
;     call str_skip_whitespace
; 
;     cmp rax, -1
;     je parse_end
; 
;     add r12, rax
;     sub r13, rax
; 
;     ; compare first character to "
;     mov r8B, byte [r12]
;     cmp r8B, 34
;     jne parse_not_str
; 
;     ; first character is a quote. Parsing string
; 
;     ; address
;     mov rdi, r12
;     ; offset by 1 to skip first character
;     add rdi, 1
;     ; length
;     mov rsi, r13
;     sub rsi, 1
;     ; quote
;     mov dl, 34
;     
;     call str_search_char
;     cmp rax, -1
;     je parse_token_found
; 
;     ; account for the original offset
;     ; also skip to the whitespace after the quote
;     add rax, 2
;     jmp parse_token_found
; 
; parse_not_str:
;     ; address
;     mov rdi, r12
;     ; length
;     mov rsi, r13
; 
;     call str_skip_to_whitespace
; 
; parse_token_found:
;     cmp rax, -1
;     je parse_end
; 
;     push rax
;         mov rdi, r12
;         mov rsi, rax
; 
;         call print
; 
;         ;mov rdi, newline_str
;         ;mov rsi, 1
;         ;call print
;         call print_newline
;         ; call forth_parse_token 
;     pop rax
; 
;     add r12, rax
;     sub r13, rax
; 
;     cmp r13, 0
;     jne parse
;     
; parse_end:
;     mov rdi, test_str
;     mov rsi, 5
;     call str_to_int
; 
;     mov rdi, rax
;     call print_int

end:
    ; exit code
    mov rax, 1
    mov rdi, r14
    mov rsi, end_template_str
    mov rdx, 38
    syscall

    ; close files
    mov rax, 3
    mov rdi, r12
    syscall

    mov rax, 3
    mov rdi, r14
    syscall

    mov rax, 3
    mov rdi, r15
    syscall

     ;;; exit
    mov rax, 60
    ; code
    mov rdi, 0
    syscall
