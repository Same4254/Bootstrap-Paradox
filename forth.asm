section .bss
    ; buffer for reading the input forth file
    read_buff resb 10240

    ; used to build name strings
    ; usually append a number to the name
    ; requires a temporary space to build
    string_build_buff resb 1024

    ; stack of if statement ids
    ; these are popped as THEN statements are made
    if_stack resb 8192

    ; 256 strings of length 64
    vars resb 16384

section .data
    ; define bytes with pointer named "text", 10 is newline
    input_filename_str db "./input.forth", 0
    func_filename_str db "func.asm", 0
    output_filename_str db "out.asm", 0
    data_filename_str db "data.asm", 0
    resb_filename_str db "resb.asm", 0

    template_str db "%include ", 34, "data.asm", 34, 10, "%include ", 34, "std.asm", 34, 10, "%include ", 34, "func.asm", 34, 10, "%include ", 34, "resb.asm", 34, 10, 10, "section .bss", 10, "the_stack resb 8192", 10, 10, "section .text", 10, "    global _start", 10, 10, "_start:", 10, "mov r12, the_stack", 10, 10

    end_template_str db "; exit", 10, "mov rax, 60", 10, "mov rdi, 0", 10, "syscall", 10

    data_file_template_str db "section .data", 10
    func_file_template_str db "section .text", 10
    resb_file_template_str db "section .bss", 10

    begin_parse_str db "Begin Parsing!", 10

    token_mem_decl_str     db "TOKEN [Mem Decl]  : "
    token_var_decl_str     db "TOKEN [Var Decl]  : "
    token_var_ref_str      db "TOKEN [Var Ref]   : "
    token_func_decl_str    db "TOKEN [Func Decl] : "
    token_func_ret_str     db "TOKEN [Func Ret]  : "
    token_func_call_str    db "TOKEN [Func Call] : "
    token_usrfunc_call_str db "TOKEN [Usr Call]  : "
    token_literal_str      db "TOKEN [Literal]   : "
    token_int_str          db "TOKEN [Int]       : "

    comma_str db ","
    space_str db " "
    colon_str db ":"
    quote_str db 34

    plus_str  db "+"
    minus_str db "-"
    star_str  db "*"
    slash_str db "/"
    percent_str  db "%"

    equal_str db "="
    greater_than_str db ">"
    greater_than_equal_str db ">="
    less_than_str db "<"
    less_than_equal_str db "<="
    not_equal_str db "!="

    zero_str db "0"
    one_str db "1"
    two_str db "2"
    three_str db "3"

    ;;; FORTH function strings/keywords
    ; these are functions that are moreso macros to a native call
    TYPE_str db "TYPE"
    DUP_str db "DUP"
    two_DUP_str db "2DUP"
    SWAP_str db "SWAP"
    two_SWAP_str db "2SWAP"
    OVER_str db "OVER"
    ROT_str db "ROT"
    CR_str db "CR"
    print_int_forth_str db "."
    IF_str db "IF"
    THEN_str db "THEN"
    ELSE_str db "ELSE"
    DROP_str db "DROP"

    NOT_str db "NOT"
    AND_str db "AND"
    OR_str db "OR"
    XOR_str db "XOR"
    VARIABLE_DECL_str db "VARIABLE"
    MEMORY_DECL_str db "MEM"
    FUNC_DECL_str db "FUNC"
    RET_str db "RET"
    SYS_READ_str  db "SYS_READ"
    SYS_WRITE_str db "SYS_WRITE"
    SYS_OPEN_str  db "SYS_OPEN"
    SYS_CLOSE_str db "SYS_CLOSE"

    FETCH_str db "@"
    FETCH_BYTE_str db "@b"

    STORE_str db "!"
    STORE_BYTE_str db "!b"

    ;;; NATIVE function strings
    print_asm_str db "print"
    print_int_asm_str db "print_int"
    print_newline_str db "print_newline"

    ;;; x86 instruction strings
    add_str db "add"
    sub_str db "sub"
    mul_str db "imul"
    div_str db "idiv"

    cmp_str db "cmp"

    sete_str  db "sete"
    setz_str  db "setz"
    setnz_str db "setnz"
    setg_str  db "setg"
    setge_str db "setge"
    setl_str  db "setl"
    setle_str db "setle"

    mov_str   db "mov"
    movzx_str db "movzx"

    jmp_str db "jmp"
    jne_str db "jne"
    je_str  db "je"

    push_str db "push"
    pop_str  db "pop"

    call_str db "call"
    ret_str  db "ret"
    db_str   db "db"
    dq_str   db "dq"
    resb_str   db "resb"
    null_term_str db ", 0"

    syscall_str db "syscall"

    ;;; register strings
    r11_str db "r11"
    r11B_str db "r11B"

    r8_str db "r8"
    r8B_str db "r8B"

    r12_str db "r12"
    rcx_str db "rcx"
    rdx_str db "rdx"
    cl_str db  "cl"
    rdi_str db "rdi"
    rsi_str db "rsi"
    rax_str db "rax"

    ;;; stack access strings
    stack_access_current_str db "[r12]"
    eight_str db "8" ; used to increment stack_ptr
    access_r11_str db "[r11]"
    access_byte_r11_str db "byte [r11]"

    ;;; string define name
    ; worst name ever, but it makes sense I swear
    string_label_name_str db "string_"
    if_label_str db "if_"
    if_else_label_str db "if_else_"
    if_then_label_str db "if_then_"

    ; conditional state variables
    if_stack_nextptr dq if_stack 
    if_stack_nextid dq 0

    ; var names index
    var_name_nextindex dq 0

    data_fp dq 0
    resb_fp dq 0
    
    ;modes
    O_RDONLY: db 0        ;read-only
    O_WRONLY: db 1        ;wirte-only
    O_RDWR:   db 2        ;read and write

    ;flags
    O_CREAT:  dw 100o     ;create file if file doesnt exists
    O_TRUNC:  dw 1000o    ;truncate file
    O_APPEND: dw 2000o    ;append to file

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
; Takes a string and a number, appends the
; number to the end of the string
;
; Input
; rdi -> str
; rsi -> str_len
; rdx -> val
; 
; Output
; rax -> length of the new string
; string_build_buff will have the new string
str_append_int:
    push rdi 
    push rsi
    push rdx

        ; copy the string into the string build buffer
        mov rdi, string_build_buff
        mov rsi, [rsp + 16]
        mov rdx, [rsp + 8]
        call memcpy

        ; convert the number of counted strings to a string
        mov rdi, [rsp]
        mov rsi, int_to_string_buff
        call int_to_string
        
        ; add the two lengths together to return at the end
        mov rdi, [rsp + 8]
        add rdi, rax
        push rdi

        ; add the number after the underscore
        mov rdi, string_build_buff
        add rdi, [rsp + 16] ; accounts for the length of the existing string
        mov rsi, int_to_string_buff
        mov rdx, rax
        call memcpy

    pop rax
    pop rdx
    pop rsi
    pop rdi 

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
; 
; rsi -> arg1 string ptr
; rdx -> arg1 string length
; 
; rcx -> arg2 string ptr
; r8  -> arg2 string length
write_movzx_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, movzx_str
    mov rdx, 5

    call write_two_arg_inst
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
write_cmp_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, cmp_str
    mov rdx, 3

    call write_two_arg_inst
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
write_and_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, AND_str
    mov rdx, 3

    call write_two_arg_inst
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
write_or_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, OR_str
    mov rdx, 2

    call write_two_arg_inst
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
write_xor_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, XOR_str
    mov rdx, 3

    call write_two_arg_inst
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
write_mul_to_file:
    mov r10, r8
    mov r9 , rcx

    mov rcx, rsi
    mov r8 , rdx

    mov rsi, mul_str
    mov rdx, 4

    call write_two_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_div_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, div_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setz_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setz_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_sete_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, sete_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setnz_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setnz_str
    mov rdx, 5
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setg_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setg_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setge_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setge_str
    mov rdx, 5
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setl_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setl_str
    mov rdx, 4
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_setle_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, setle_str
    mov rdx, 5
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_jne_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, jne_str
    mov rdx, 3
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_jmp_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, jmp_str
    mov rdx, 3
    call write_one_arg_inst
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> label string
; rdx -> label length
write_je_to_file:
    mov rcx, rsi
    mov r8 , rdx
    
    mov rsi, je_str
    mov rdx, 2
    call write_one_arg_inst
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
write_ret_to_file:
    push rdi
        mov rsi, ret_str
        mov rdx, 3
        call write_str_to_file
    pop rdi

    call write_newline_to_file
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Input
; rdi -> fp
; rsi -> function name string
; rdx -> function name length
write_label_to_file:
    push rdi

        ; write the label name
        call write_str_to_file
        
        ; write colon
        mov rdi, [rsp]
        mov rsi, colon_str
        mov rdx, 1
        call write_str_to_file

        ; newline
        mov rdi, [rsp]
        call write_newline_to_file

    pop rdi

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
    mov rdi, r12
    mov rsi, r13
    mov dl , 41  ; )
    call str_search_char

    ; TODO handle the error case
    add r12, rax
    add r12, 1  ; add 1 to get off the )
    
    sub r13, rax
    sub r13, 1

    ; clean the stack
    pop rax
    pop rax

    ; setup parameters
    mov rdi, r12
    mov rsi, r13

    ; go back to the top and start again
    ; note that this is not a call ;)
    jmp forth_grab_token

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
    mov rdx, 10240
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
    mov rsi, 1102o
    mov rdx, 777o
    syscall

    mov r14, rax

    ; open string file, O_CREAT, O_RDWR, 777 permissions
    mov rax, 2
    mov rdi, data_filename_str
    mov rsi, 1102o
    mov rdx, 777o
    syscall

    mov [data_fp], rax

    ; open string file, O_CREAT, O_RDWR, 777 permissions
    mov rax, 2
    mov rdi, resb_filename_str
    mov rsi, 1102o
    mov rdx, 777o
    syscall

    mov [resb_fp], rax

    ; open string file, O_CREAT, O_RDWR, 777 permissions
    mov rax, 2
    mov rdi, func_filename_str
    mov rsi, 1102o
    mov rdx, 777o
    syscall

    mov rbx, rax

    ; Write start of code output file
    mov rax, 1
    mov rdi, r14
    mov rsi, template_str
    mov rdx, 175
    syscall

    ; Write start of data file
    mov rax, 1
    mov rdi, [data_fp]
    mov rsi, data_file_template_str
    mov rdx, 14
    syscall

    ; Write start of resb file
    mov rax, 1
    mov rdi, [resb_fp]
    mov rsi, resb_file_template_str
    mov rdx, 13
    syscall

    ; Write start of func file
    mov rax, 1
    mov rdi, rbx
    mov rsi, func_file_template_str
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
    ; rbx -> func file

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

    push rax
    push rdx

    ; check if the token is the function declaration string
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, FUNC_DECL_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_func_decl

    ; check if the token is the variable declaration string
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, VARIABLE_DECL_str
    mov rcx, 8
    call str_ncmp
    cmp rax, 1
    je parse_var_decl

    ; check if the token is the variable declaration string
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, MEMORY_DECL_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_memory_decl

    ; check if the token starts with a quote (string literal)
    mov rcx, 0
    mov r8, [rsp + 8]
    mov cl, byte [r8]
    cmp cl, 34
    je parse_literal

    ; check if the token is the return statement
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, RET_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_ret

    ; check if the token is a plain number
    mov rsi, [rsp]
    mov rdi, [rsp + 8]
    call str_is_int
    cmp rax, 1
    je parse_int

    ; check if the token is an IF statement
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, IF_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_if

    ; check if the token is an ELSE statement
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, ELSE_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_else

    ; check if the token is a THEN statement
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, THEN_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_then

    ; check if the function being called is +
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, plus_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_add

    ; check if the function being called is -
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, minus_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_sub

    ; check if the function being called is *
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, star_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_mul

    ; check if the function being called is %
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, percent_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_mod

    ; check if the function being called is /
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, slash_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_div

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

    ; check if the function being called is CR
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, CR_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_CR

    ; check if the function being called is DUP
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, DUP_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_call_DUP

    ; check if the function being called is 2DUP
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, two_DUP_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_func_call_2DUP

    ; check if the function being called is SWAP
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, SWAP_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_func_call_SWAP

    ; check if the function being called is 2SWAP
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, two_SWAP_str
    mov rcx, 5
    call str_ncmp
    cmp rax, 1
    je parse_func_call_2SWAP

    ; check if the function being called is DROP
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, DROP_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_func_call_drop

    ; check if the function being called is OVER
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, OVER_str
    mov rcx, 4
    call str_ncmp
    cmp rax, 1
    je parse_func_call_OVER

    ; check if the function being called is ROT
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, ROT_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_call_ROT

    ; check if the function being called is =
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, equal_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_is_equal

    ; check if the function being called is !=
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, not_equal_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_is_not_equal

    ; check if the function being called is >
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, greater_than_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_greater_than

    ; check if the function being called is >=
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, greater_than_equal_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_greater_than_equal
    
    ; check if the function being called is <
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, less_than_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_less_than

    ; check if the function being called is <=
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, less_than_equal_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_less_than_equal

    ; check if the function being called is AND
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, AND_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_call_and

    ; check if the function being called is NOT
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, NOT_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_call_not

    ; check if the function being called is OR
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, OR_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_or

    ; check if the function being called is XOR
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, XOR_str
    mov rcx, 3
    call str_ncmp
    cmp rax, 1
    je parse_func_call_xor

    ; check if the function being called is FETCH
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, FETCH_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_fetch

    ; check if the function being called is FETCH BYTE
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, FETCH_BYTE_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_fetch_byte

    ; check if the function being called is STORE
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, STORE_str
    mov rcx, 1
    call str_ncmp
    cmp rax, 1
    je parse_func_call_store

    ; check if the function being called is STORE BYTE
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, STORE_BYTE_str
    mov rcx, 2
    call str_ncmp
    cmp rax, 1
    je parse_func_call_store_byte

    ; check if the function being called is SYS_READ
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, SYS_READ_str
    mov rcx, 8
    call str_ncmp
    cmp rax, 1
    je parse_func_call_sys_read

    ; check if the function being called is SYS_WRITE
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, SYS_WRITE_str
    mov rcx, 9
    call str_ncmp
    cmp rax, 1
    je parse_func_call_sys_write

    ; check if the function being called is SYS_OPEN
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, SYS_OPEN_str
    mov rcx, 8
    call str_ncmp
    cmp rax, 1
    je parse_func_call_sys_open

    ; check if the function being called is SYS_CLOSE
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    mov rdx, SYS_CLOSE_str
    mov rcx, 9
    call str_ncmp
    cmp rax, 1
    je parse_func_call_sys_close

    ;;; NO MORE BUILT IN KEYWORDS FROM HERE

    ; must be a variable name, function name, or garbage

    ; check if the token is a variable name
    ; r8 -> index of current variable name
    mov r8, 0

    ; skip if no variable names have been written yet
    mov r9, [var_name_nextindex]
    cmp r8, r9
    jge find_func_name_loop

find_var_name_loop:
    push r8
        ; to avoid needing to also store the sizes of the strings
        ; we will use the length of the token for str_ncmp
        ; however, if the token is a substring of the name, then this code will give
        ; a false positive match. Thus, we must check if there is a null terminator
        ; to check that the variable name also ends at the same point as the 
        ; name being looked up
        ; TODO: start using null terminators everywhere, rather than hardcoded lengths

        ; convert the index to memory address. Each string has a space within the 
        ; memory block
        imul r8, 64
        mov rdi, r8
        add rdi, vars
        mov rsi, [rsp + 8]
        mov rdx, [rsp + 16]
        mov rcx, [rsp + 8]
        call str_ncmp
        cmp rax, 1
    pop r8

    jne find_var_name_loop_check
    
    push r8
        ; string matched, but need to check for a null terminator
        ; to make sure the token is an exact match, and not just a substring
        mov r9, 0

        ; get the address of the chracter at the index equivalent to the 
        ; length of the token (checking if the stored variable name ends
        ; at the same length as the token name)
        imul r8, 64
        mov rdi, r8
        add rdi, vars
        add rdi, [rsp + 8]
        mov r9, 0
        mov r9B, byte [rdi]
        cmp r9B, 0
    pop r8
    je parse_variable_reference

find_var_name_loop_check:
    inc r8
    mov r9, [var_name_nextindex]
    cmp r8, r9
    jl find_var_name_loop

    ; check if the token is a user-defined function name
find_func_name_loop:
    ; print
    mov rdi, token_usrfunc_call_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline
    
    ; the name is a function that was previously defined. Call it
    mov rdi, r14
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_loop_end

    ; programmer is an idiot, lets yell at them!

    jmp end

;;;;;;; IMPLEMENTATION OF SWITCH CASE STATEMENTS

parse_variable_reference:
    ; print
    mov rdi, token_var_ref_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; mov r11, <variable>
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, [rsp + 8]
    mov r8 , [rsp]
    call write_mov_to_file

    ; push r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_loop_end

parse_if:
    ; pops the top value on the *FORTH* stack and branches
    ; the structure will be as follows
    ;
    ; if_x:
    ; ...
    ; if_else_x:
    ; ...
    ; if_then_x:
    ; 
    ; where x is the unique id for the scope
    ; the else is also optional

    ; pop the top value on the stack 
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; compare this value to 0
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_cmp_to_file

    ; jump to the else label if equal to 0
    ; make the label 
    mov rdi, if_else_label_str
    mov rsi, 8
    mov rdx, [if_stack_nextid]
    call str_append_int

    ; write the jump to the else
    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_je_to_file
    
    ; build the name for the if label
    mov rdi, if_label_str
    mov rsi, 3
    mov rdx, [if_stack_nextid]
    call str_append_int

    ; write the if label
    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_label_to_file

    ; put the id onto the stack (double dereference)
    mov rdi, [if_stack_nextid]
    mov rsi, [if_stack_nextptr]
    mov [rsi], rdi

    ; TODO check length
    mov rdi, [if_stack_nextptr]
    add rdi, 8
    mov [if_stack_nextptr], rdi

    mov rdi, [if_stack_nextid]
    inc rdi
    mov [if_stack_nextid], rdi

    jmp parse_loop_end

parse_else:
    ; just above the "else" section of the code is the "if"
    ; hence, the end of the "if" section must jump to the
    ; "then" section of code
    mov rdi, if_then_label_str
    mov rsi, 8
    mov rdx, [if_stack_nextptr]
    mov rdx, [rdx - 8]
    call str_append_int

    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_jmp_to_file

    ; write the else label
    ; TODO check this pointer dereference
    mov rdi, if_else_label_str
    mov rsi, 8
    mov rdx, [if_stack_nextptr]
    mov rdx, [rdx - 8]
    call str_append_int

    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_label_to_file

    ; set a flag at the high bit of the id to mark there was an else
    mov rdx, [if_stack_nextptr]
    mov rsi, [rdx - 8]

    mov rdi, 1 << 30
    or  rsi, rdi
    mov [rdx - 8], rsi
    
    jmp parse_loop_end

parse_then:
    ; cmp qword [if_elseset], 0

    ; set a flag at the high bit of the id to mark there was an else
    mov rdx, [if_stack_nextptr]
    mov rsi, [rdx - 8]

    mov rdi, 1 << 30
    and rsi, rdi

    cmp rsi, 0

    jne parse_then_remove_flag

    ; if there was no "else" label
    ; make the label for the else, effevtively nop
    ; (the if always jumps to the else if the condition fails)

    ; make the label 
    mov rdi, if_else_label_str
    mov rsi, 8
    mov rdx, [if_stack_nextptr]
    mov rdx, [rdx - 8]
    call str_append_int

    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_label_to_file

    jmp parse_then_end

parse_then_remove_flag:
    mov rsi, [rdx - 8]

    mov rdi, 1 << 30
    xor rsi, rdi
    mov [rdx - 8], rsi

parse_then_end:
    ; not needed, but nice to have a label here
    mov rdi, if_then_label_str
    mov rsi, 8
    mov rdx, [if_stack_nextptr]
    mov rdx, [rdx - 8]
    call str_append_int

    mov rdi, r14
    mov rsi, string_build_buff
    mov rdx, rax
    call write_label_to_file

    ; pop the top ID off the stack
    mov rdi, [if_stack_nextptr]
    sub rdi, 8
    mov [if_stack_nextptr], rdi

    ; reset the else flag
    ; mov qword [if_elseset], 0
    jmp parse_loop_end

parse_func_decl:    
    ; this is a function decl, get the next token for the name of the function
    ; being declared

    ; move the pointer to the start of the token
    mov r12, [rsp + 8]
    ; move the pointer to the end of the token
    add r12, [rsp]
    ; subtract the length of the token to the total length of the buffer 
    sub r13, [rsp]

    ; grab the name of the function
    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; make the next token the token that is being processed
    mov [rsp + 8], rax
    mov [rsp], rdx

    ; print
    mov rdi, token_func_decl_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; swap r14 and rbx
    ; this makes all code output direct to the func file
    mov r8, r14
    mov r14, rbx
    mov rbx, r8

    ; write the label for the function to the file
    mov rdi, r14
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_label_to_file

    jmp parse_loop_end

parse_var_decl:
    ; this is a variable decl, get the next token for the name of the function
    ; being declared

    ; move the pointer to the start of the token
    mov r12, [rsp + 8]
    ; move the pointer to the end of the token
    add r12, [rsp]
    ; subtract the length of the token to the total length of the buffer 
    sub r13, [rsp]

    ; grab the name of the variable
    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; make the next token the token that is being processed
    mov [rsp + 8], rax
    mov [rsp], rdx

    ; print
    mov rdi, token_var_decl_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; write this variable name to the list of variables
    mov rdi, [var_name_nextindex]
    imul rdi, 64
    add rdi, vars
    mov rsi, [rsp + 8]
    mov rdx, [rsp]

    push rdi
        call memcpy
    pop rdi

    ; write a null terminator at the end of the string
    add rdi, [rsp]
    mov byte [rdi], 0

    inc qword [var_name_nextindex]

    ; add this variable to the data file
    mov rdi, [data_fp]
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_str_to_file

    ; write a space
    mov rdi, [data_fp]
    mov rsi, space_str
    mov rdx, 1
    call write_str_to_file

    ; write "dq"
    mov rdi, [data_fp]
    mov rsi, dq_str
    mov rdx, 2
    call write_str_to_file

    ; write a space
    mov rdi, [data_fp]
    mov rsi, space_str
    mov rdx, 1
    call write_str_to_file

    ; write a 0
    mov rdi, [data_fp]
    mov rsi, zero_str
    mov rdx, 1
    call write_str_to_file

    mov rdi, [data_fp]
    call write_newline_to_file

    jmp parse_loop_end

parse_memory_decl:
    ; this is a memory decl, get the next token for the name of the block
    ; being declared

    ; move the pointer to the start of the token
    mov r12, [rsp + 8]
    ; move the pointer to the end of the token
    add r12, [rsp]
    ; subtract the length of the token to the total length of the buffer 
    sub r13, [rsp]

    ; grab the name of the memory block
    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; make the next token the token that is being processed
    mov [rsp + 8], rax
    mov [rsp], rdx

    ; print
    mov rdi, token_mem_decl_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; write this name to the list of variables
    mov rdi, [var_name_nextindex]
    imul rdi, 64
    add rdi, vars
    mov rsi, [rsp + 8]
    mov rdx, [rsp]

    push rdi
        call memcpy
    pop rdi

    ; write a null terminator at the end of the string
    add rdi, [rsp]
    mov byte [rdi], 0

    inc qword [var_name_nextindex]

    ; add this variable to the data file
    mov rdi, [resb_fp]
    mov rsi, [rsp + 8]
    mov rdx, [rsp]
    call write_str_to_file

    ; write a space
    mov rdi, [resb_fp]
    mov rsi, space_str
    mov rdx, 1
    call write_str_to_file

    ; write "resb"
    mov rdi, [resb_fp]
    mov rsi, resb_str
    mov rdx, 4
    call write_str_to_file

    ; write a space
    mov rdi, [resb_fp]
    mov rsi, space_str
    mov rdx, 1
    call write_str_to_file

    ; grab another token for the number of integers to allocate
    ; move the pointer to the start of the token
    mov r12, [rsp + 8]
    ; move the pointer to the end of the token
    add r12, [rsp]
    ; subtract the length of the token to the total length of the buffer 
    sub r13, [rsp]

    ; grab the number
    mov rdi, r12
    mov rsi, r13
    call forth_grab_token

    ; make the next token the token that is being processed
    mov [rsp + 8], rax
    mov [rsp], rdx

    ; TODO: check if it is an integer
    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call str_to_int

    mov rdi, rax
    mov rsi, int_to_string_buff
    call int_to_string
    
    ; write the number of bytes
    mov rdi, [resb_fp]
    mov rsi, int_to_string_buff
    mov rdx, rax
    call write_str_to_file

    mov rdi, [resb_fp]
    call write_newline_to_file

    jmp parse_loop_end

parse_func_ret:
    ; print
    mov rdi, token_func_ret_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; Write the return statement to the file
    mov rdi, r14
    call write_ret_to_file

    ; check if this is the true end to the function (i.e. if we are in the middle of an IF statement)
    cmp qword [if_stack_nextptr], if_stack
    jne parse_loop_end

    ; end of writing function 

    ; swap r14 and rbx
    ; this makes all code output direct back to the output file
    mov r8, r14
    mov r14, rbx
    mov rbx, r8

    jmp parse_loop_end

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
    
    jmp parse_builtin_func_call_end

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

    ; push r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file
    
    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_sub:
    ; pop rcx
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; sub r11, rcx
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_sub_to_file

    ; push r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file
    
    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_mul:
    ; pop r11
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop rcx
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; imul rax, rcx
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_mul_to_file

    ; push rax
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_mod:
    ; pop r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop rax
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; mov rdx, 0
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_mov_to_file

    ; div r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_div_to_file

    ; push rdx
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_div:
    ; pop r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop rax
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; mov rdx, 0
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_mov_to_file

    ; div r11
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_div_to_file

    ; push rax
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

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

    jmp parse_builtin_func_call_end

parse_func_call_CR:
    mov rdi, r14
    mov rsi, print_newline_str
    mov rdx, 13
    call write_call_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

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

    jmp parse_builtin_func_call_end

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

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_SWAP:
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
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (again)
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_2SWAP:
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

    ; pop top value
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop top value
    mov rdi, r14
    mov rsi, rsi_str
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
    mov rsi, rsi_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (again)
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_OVER:
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

    ; push to stack
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_ROT:
    ; pop top value (n3)
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; pop top value (n2)
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value (n1)
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; push to stack (n2)
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (n3)
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    ; push to stack (n1)
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_drop:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    jmp parse_builtin_func_call_end

parse_func_call_is_equal:
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

    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setz r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setz_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_is_not_equal:
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

    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setnz r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setnz_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_greater_than:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setg r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setg_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_greater_than_equal:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setg r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setge_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_less_than:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setg r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setl_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_less_than_equal:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file
    
    ; cmp rcx, r11
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, r11_str
    mov r8 , 3
    call write_cmp_to_file

    ; setg r11B
    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_setle_to_file

    ; movzx r11, r11B
    mov rdi, r14
    mov rsi, r11_str
    mov rdx , 3
    mov rcx, r11B_str
    mov r8 , 4
    call write_movzx_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    jmp parse_builtin_func_call_end

parse_func_call_and:
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

    ; and r11, rcx
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_and_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_not:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_cmp_to_file

    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_mov_to_file

    mov rdi, r14
    mov rsi, r11B_str
    mov rdx, 4
    call write_sete_to_file
    
    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_or:
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

    ; or r11, rcx
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_or_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_xor:
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

    ; xor r11, rcx
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, rcx_str
    mov r8 , 3
    call write_xor_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_fetch:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; assume that this value is a memory address...
    ; get the value at this memory address
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    mov rcx, access_r11_str
    mov r8 , 5
    call write_mov_to_file

    ; push r11 to stack
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_fetch_byte:
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; clear rcx
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_mov_to_file

    ; assume that this value is a memory address...
    ; get the value at this memory address
    mov rdi, r14
    mov rsi, cl_str
    mov rdx, 2
    mov rcx, access_r11_str
    mov r8 , 5
    call write_mov_to_file

    ; push rcx to stack
    mov rdi, r14
    mov rsi, rcx_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_store:
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

    mov rdi, r14
    mov rsi, access_r11_str
    mov rdx, 5
    mov rcx, rcx_str
    mov r8 , 3
    call write_mov_to_file

    jmp parse_builtin_func_call_end

parse_func_call_store_byte:
    ; pop top value
    mov rdi, r14
    mov rsi, r8_str
    mov rdx, 2
    call write_forth_stack_pop_to_file
    
    ; pop top value
    mov rdi, r14
    mov rsi, r11_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    mov rdi, r14
    mov rsi, access_byte_r11_str
    mov rdx, 10
    mov rcx, r8B_str
    mov r8 , 3
    call write_mov_to_file

    jmp parse_builtin_func_call_end

parse_func_call_sys_read:
    ; pop top value for number of bytes to read
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for buff ptr
    mov rdi, r14
    mov rsi, rsi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for file descriptor
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; mov 0 into rax 
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    mov rcx, zero_str
    mov r8 , 1
    call write_mov_to_file

    ; call syscall
    mov rdi, r14
    mov rsi, syscall_str
    mov rdx, 7
    call write_str_to_file

    mov rdi, r14
    call write_newline_to_file

    ; push the return value onto the forth stack
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_sys_write:
    ; pop top value for number of bytes to write
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for buff ptr
    mov rdi, r14
    mov rsi, rsi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for file descriptor
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; mov 1 into rax 
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    mov rcx, one_str
    mov r8 , 1
    call write_mov_to_file

    ; call syscall
    mov rdi, r14
    mov rsi, syscall_str
    mov rdx, 7
    call write_str_to_file

    mov rdi, r14
    call write_newline_to_file

    ; push the return value onto the forth stack
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_sys_open:
    ; pop top value for mode
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for flags
    mov rdi, r14
    mov rsi, rsi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; pop top value for file name
    mov rdi, r14
    mov rsi, rdi_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; mov 2 into rax 
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    mov rcx, two_str
    mov r8 , 1
    call write_mov_to_file

    ; call syscall
    mov rdi, r14
    mov rsi, syscall_str
    mov rdx, 7
    call write_str_to_file

    mov rdi, r14
    call write_newline_to_file

    ; push the return value onto the forth stack
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_func_call_sys_close:
    ; pop top value for file descriptor
    mov rdi, r14
    mov rsi, rdx_str
    mov rdx, 3
    call write_forth_stack_pop_to_file

    ; mov 3 into rax 
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    mov rcx, three_str
    mov r8 , 1
    call write_mov_to_file

    ; call syscall
    mov rdi, r14
    mov rsi, syscall_str
    mov rdx, 7
    call write_str_to_file

    mov rdi, r14
    call write_newline_to_file

    ; push the return value onto the forth stack
    mov rdi, r14
    mov rsi, rax_str
    mov rdx, 3
    call write_forth_stack_push_to_file

    mov rdi, r14
    call write_newline_to_file

    jmp parse_builtin_func_call_end

parse_literal:
    ; print
    mov rdi, token_literal_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ; write "string_"
    ; mov rdi, r15
    ; mov rsi, string_label_name_str
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
    mov rsi, string_label_name_str
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
        mov rdi, [data_fp]
        mov rsi, string_build_buff
        mov rdx, [rsp]
        call write_str_to_file

        ; write a space
        mov rdi, [data_fp]
        mov rsi, space_str
        mov rdx, 1
        call write_str_to_file

        ; write "db"
        mov rdi, [data_fp]
        mov rsi, db_str
        mov rdx, 2
        call write_str_to_file

        ; write a space
        mov rdi, [data_fp]
        mov rsi, space_str
        mov rdx, 1
        call write_str_to_file

        ; write the string literal
        mov rdi, [data_fp]
        mov rsi, [rsp + 16]
        mov rdx, [rsp + 8]
        call write_str_to_file

        mov rdi, [data_fp]
        mov rsi, null_term_str
        mov rdx, 3
        call write_str_to_file

        mov rdi, [data_fp]
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

    jmp parse_loop_end

parse_int:
    ; print
    mov rdi, token_int_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

    ;;; load the value into a register and push it onto stack
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

    jmp parse_loop_end

parse_builtin_func_call_end:
    mov rdi, token_func_call_str
    mov rsi, 20
    call print

    mov rdi, [rsp + 8]
    mov rsi, [rsp]
    call print

    call print_newline

parse_loop_end:
    pop rdx
    pop rax

    ; move the pointer to the start of the token
    mov r12, rax
    ; move the pointer to the end of the token
    add r12, rdx

    ; subtract the length of the token to the total length of the buffer 
    sub r13, rdx
    jmp parse

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
    mov rdi, [data_fp]
    syscall

    mov rax, 3
    mov rdi, [resb_fp]
    syscall

    mov rax, 3
    mov rdi, rbx
    syscall

     ;;; exit
    mov rax, 60
    ; code
    mov rdi, 0
    syscall
