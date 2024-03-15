( std lib )

MEM int_to_string_buffer 1024

FUNC _3DUP ( a b c -> a b c a b c )
    ROT

    ( b c a )
    DUP

    ( b c a a)
    
    2SWAP
    ( a a b c)

    OVER
    ( a a b c b )

    SWAP
    ( a a b b c )

    2SWAP
    ( a b c a b)

    ROT
    ( a b a b c )

    DUP
    ( a b a b c c )

    2SWAP
    ( a b c c a b)

    ROT
    ( a b c a b c )
RET

FUNC STRNCMP_HELP ( str1 str2 n)
    DUP 0 = IF DROP DROP DROP 1 RET THEN
    ROT ROT
    ( n str2 str1 )
    2DUP

    ( n str2 str1 str2 str1 )
    @b SWAP @b

    ( n str2 str1 c2 c1 )
    != IF DROP DROP DROP 0 RET THEN
    1 + SWAP 1 + ROT 1 - 
    STRNCMP_HELP

    RET

FUNC STRNCMP ( str1 n1 str2 n2 -> bool )
    ROT
    
    ( str1 str2 n2 n1 )
    DUP

    ( str1 str2 n2 n1 n1 )
    ROT

    ( test if the sizes are the same)
    ( str1 str2 n1 n1 n2 )
    != IF DROP DROP DROP 0 RET THEN

    ( str1 str2 n)
    STRNCMP_HELP

    RET

FUNC STR_LEN ( str -> n )
    DUP @b 0 = IF
        DROP 0
        RET
    THEN

    1 + STR_LEN 1 +
RET

FUNC MEMCPY (dst src n)
    ( base case )
    DUP 0 = IF DROP DROP DROP RET THEN
    ROT ROT

    (n dst src)
    2DUP

    (n dst src dst src)
    @b !b

    1 + SWAP 1 + SWAP
    ROT 1 - MEMCPY

    RET

FUNC STR_REVERSE_HELP ( str n )
    DUP 1 < IF 
        DROP DROP
        RET
    THEN

    ( str n )
    2DUP +
    ROT

    ( n str_end str )
    DUP @b

    ( n str_end str c_tmp )
    ROT ROT
    SWAP

    ( n c_tmp str str_end)
    2DUP @b !b
    
    ( n c_tmp str str_end)
    ROT  

    ( n str str_end c_tmp)
    !b

    1 +

    ( n str )
    SWAP

    2 - 

    STR_REVERSE_HELP

    RET

FUNC STR_REVERSE ( str n )
    DUP DUP 0 = SWAP 1 = OR IF 
        DROP DROP 
        RET
    THEN

    1 -
    
    STR_REVERSE_HELP
    
    RET

FUNC STR_FIND_CHAR_HELPER ( str len c i )
    ROT
    ( str c i len )
    2DUP 1 - = IF 
        DROP DROP DROP DROP 
        -1 RET 
    THEN

    SWAP 2SWAP

    ( len i str c )
    SWAP ROT 

    ( len c str i )
    2DUP + @b
    ( len c str i temp_c )
    2SWAP SWAP 2SWAP

    ( len str c i temp_c )
    ROT

    ( len str i temp_c c )
    2DUP = IF 
        DROP DROP ROT ROT DROP DROP
        RET
    THEN

    SWAP DROP

    ( len str i c )
    SWAP 2SWAP SWAP 2SWAP

    ( str len c i )
    1 +
    STR_FIND_CHAR_HELPER

    RET

FUNC STR_FIND_CHAR ( str len c )
    0 STR_FIND_CHAR_HELPER

    RET

FUNC STR_IS_INT ( str len -> bool )
    DUP 0 <= IF 
        DROP DROP
        0
        RET
    THEN

    SWAP DUP @b
    DUP 48 < SWAP 57 > OR IF
        DROP DROP 0
        RET
    THEN

    1 + SWAP 1 -
    DUP 0 = IF
        DROP DROP
        1
    ELSE
        STR_IS_INT
    THEN
    
    RET

FUNC POW ( base pow -> int )
    DUP 0 = IF 
        DROP DROP 1
        RET
    THEN

    OVER SWAP

    1 -

    POW
    *

    RET

FUNC STR_TO_INT ( str len -> int )
    DUP 0 = IF
        DROP DROP
        0
        RET
    THEN

    1 - SWAP
    DUP @b
    48 -
    
    ( len str n )
    ROT DUP

    ( str n len len )
    10 SWAP POW

    ( str n len base )
    ROT *

    ROT 
    1 +
    ROT 

    STR_TO_INT
    +

    RET

FUNC INT_TO_STRING_HELP ( buff int -> len )
    DUP 10 %
    ROT 

    ( int n buff )
    DUP

    ROT 

    ( int buff buff n )
    48 +
    !b

    ( int buff )
    1 + SWAP 10 /

    DUP 0 = IF 
        DROP DROP 
        1
        RET
    THEN

    INT_TO_STRING_HELP

    1 +

    RET

FUNC INT_TO_STRING ( buff int -> buff len )
    OVER SWAP 

    DUP 0 < IF
        INT_TO_STRING_HELP
        2DUP +
        45 !b
        1 +
    ELSE
        INT_TO_STRING_HELP
    THEN

    ( buff len )
    2DUP
    STR_REVERSE

    RET

FUNC PRINT_INT ( int )
    int_to_string_buffer SWAP INT_TO_STRING
    TYPE
RET

(        END OF STD        )

VARIABLE input_file
MEM      input_buffer 1024
VARIABLE input_buffer_len
VARIABLE input_buffer_curr 
input_buffer_curr input_buffer !

VARIABLE output_file
MEM      output_buffer 1024
VARIABLE output_buffer_cap
VARIABLE output_buffer_length

output_buffer_cap 1024 !

MEM      token 1024
VARIABLE token_len

VARIABLE line
VARIABLE col

VARIABLE next_line
VARIABLE next_col

( space for all of the tokens to be written to )
MEM      token_struct 4800000
VARIABLE token_struct_len

MEM      token_id_to_string 4096
VARIABLE token_id_to_string_len

MEM      string_literals 1024
VARIABLE string_literals_len
VARIABLE string_literals_id ( unique id for each str )

MEM      variable_names 1024
VARIABLE variable_names_len

MEM      method_names 1024
VARIABLE method_names_len

MEM      referenced_names 1024
VARIABLE referenced_names_len

MEM      scope_stack 1024
VARIABLE scope_stack_len
VARIABLE scope_next_id

MEM      if_stack 1024
VARIABLE if_stack_len

MEM      while_stack 1024
VARIABLE while_stack_len

MEM newline 8
newline 10 !

MEM quote 8
quote 34 !

FUNC SP_REG "r12" RET

FUNC TOKEN_STRUCT_SIZE    48 RET

FUNC TOKEN_STRING_LITERAL 1  RET
FUNC TOKEN_IMM_INT        2  RET

FUNC TOKEN_ADD            3  RET
FUNC TOKEN_SUB            4  RET
FUNC TOKEN_MUL            5  RET
FUNC TOKEN_DIV            6  RET
FUNC TOKEN_MOD            7  RET

FUNC TOKEN_PRINT_INT      8  RET

FUNC TOKEN_TYPE           9  RET
FUNC TOKEN_CR             10 RET

FUNC TOKEN_STACK_LEN      11 RET
FUNC TOKEN_DUP            12 RET
FUNC TOKEN_2DUP           13 RET
FUNC TOKEN_SWAP           14 RET
FUNC TOKEN_2SWAP          15 RET
FUNC TOKEN_DROP           16 RET
FUNC TOKEN_OVER           17 RET
FUNC TOKEN_ROT            18 RET

FUNC TOKEN_IS_EQUAL       19 RET
FUNC TOKEN_NOT_EQUAL      20 RET
FUNC TOKEN_GREATER        21 RET
FUNC TOKEN_GREATER_EQ     22 RET
FUNC TOKEN_LESS           23 RET
FUNC TOKEN_LESS_EQ        24 RET

FUNC TOKEN_AND            25 RET
FUNC TOKEN_NOT            26 RET
FUNC TOKEN_OR             27 RET
FUNC TOKEN_XOR            28 RET

FUNC TOKEN_IF             29 RET
FUNC TOKEN_ELSE           30 RET
FUNC TOKEN_THEN           31 RET

FUNC TOKEN_WHILE          32 RET
FUNC TOKEN_DO             33 RET
FUNC TOKEN_END            34 RET

FUNC TOKEN_VARIABLE_DECL  35 RET
FUNC TOKEN_MEM_DECL       36 RET

FUNC TOKEN_VARIABLE_REF   37 RET
FUNC TOKEN_FETCH          38 RET
FUNC TOKEN_FETCH_BYTE     39 RET
FUNC TOKEN_STORE          40 RET
FUNC TOKEN_STORE_BYTE     41 RET

FUNC TOKEN_FUNC_DECL      42 RET
FUNC TOKEN_RET            43 RET
FUNC TOKEN_FUNC_CALL      44 RET

FUNC TOKEN_SYS_READ       45 RET
FUNC TOKEN_SYS_WRITE      46 RET
FUNC TOKEN_SYS_OPEN       47 RET
FUNC TOKEN_SYS_CLOSE      48 RET
FUNC TOKEN_SYS_EXIT       49 RET

FUNC TOKEN_UNKOWN_NAME    50 RET

FUNC PUSH_TOKEN_NAME ( token_id str str_len )
    token_id_to_string token_id_to_string_len @ + 16 + SWAP !
    token_id_to_string token_id_to_string_len @ + 8  + SWAP !
    token_id_to_string token_id_to_string_len @ + SWAP !

    token_id_to_string_len token_id_to_string_len @ 24 + !
RET

TOKEN_ADD           "+"         PUSH_TOKEN_NAME
TOKEN_SUB           "-"         PUSH_TOKEN_NAME
TOKEN_MUL           "*"         PUSH_TOKEN_NAME
TOKEN_DIV           "/"         PUSH_TOKEN_NAME
TOKEN_MOD           "%"         PUSH_TOKEN_NAME
TOKEN_PRINT_INT     "."         PUSH_TOKEN_NAME
TOKEN_TYPE          "TYPE"      PUSH_TOKEN_NAME
TOKEN_CR            "CR"        PUSH_TOKEN_NAME
TOKEN_STACK_LEN     "STACK_LEN" PUSH_TOKEN_NAME
TOKEN_DUP           "DUP"       PUSH_TOKEN_NAME
TOKEN_2DUP          "2DUP"      PUSH_TOKEN_NAME
TOKEN_SWAP          "SWAP"      PUSH_TOKEN_NAME
TOKEN_2SWAP         "2SWAP"     PUSH_TOKEN_NAME
TOKEN_DROP          "DROP"      PUSH_TOKEN_NAME
TOKEN_OVER          "OVER"      PUSH_TOKEN_NAME
TOKEN_ROT           "ROT"       PUSH_TOKEN_NAME
TOKEN_IS_EQUAL      "=="        PUSH_TOKEN_NAME
TOKEN_NOT_EQUAL     "!="        PUSH_TOKEN_NAME
TOKEN_GREATER       ">"         PUSH_TOKEN_NAME
TOKEN_GREATER_EQ    ">="        PUSH_TOKEN_NAME
TOKEN_LESS          "<"         PUSH_TOKEN_NAME
TOKEN_LESS_EQ       "<="        PUSH_TOKEN_NAME
TOKEN_AND           "AND"       PUSH_TOKEN_NAME
TOKEN_NOT           "NOT"       PUSH_TOKEN_NAME
TOKEN_OR            "OR"        PUSH_TOKEN_NAME
TOKEN_XOR           "XOR"       PUSH_TOKEN_NAME
TOKEN_IF            "IF"        PUSH_TOKEN_NAME
TOKEN_ELSE          "ELSE"      PUSH_TOKEN_NAME
TOKEN_THEN          "THEN"      PUSH_TOKEN_NAME
TOKEN_WHILE         "WHILE"     PUSH_TOKEN_NAME
TOKEN_DO            "DO"        PUSH_TOKEN_NAME
TOKEN_END           "END"       PUSH_TOKEN_NAME
TOKEN_VARIABLE_DECL "VARIABLE"  PUSH_TOKEN_NAME
TOKEN_MEM_DECL      "MEM"       PUSH_TOKEN_NAME
TOKEN_FETCH         "@"         PUSH_TOKEN_NAME
TOKEN_FETCH_BYTE    "@b"        PUSH_TOKEN_NAME
TOKEN_STORE         "!"         PUSH_TOKEN_NAME
TOKEN_STORE_BYTE    "!b"        PUSH_TOKEN_NAME
TOKEN_FUNC_DECL     "FUNC"      PUSH_TOKEN_NAME
TOKEN_RET           "RET"       PUSH_TOKEN_NAME
TOKEN_SYS_READ      "SYS_READ"  PUSH_TOKEN_NAME
TOKEN_SYS_WRITE     "SYS_WRITE" PUSH_TOKEN_NAME
TOKEN_SYS_OPEN      "SYS_OPEN"  PUSH_TOKEN_NAME
TOKEN_SYS_CLOSE     "SYS_CLOSE" PUSH_TOKEN_NAME
TOKEN_SYS_EXIT      "SYS_EXIT"  PUSH_TOKEN_NAME

FUNC STRING_NAME_PREFIX ( -> ptr n )
    "string_"
RET

FUNC FIND_TOKEN_BY_ID_HELP ( id off -> str len )
    DUP token_id_to_string_len @ >= IF
        DROP DROP 0 0
        RET
    THEN

    2DUP
    token_id_to_string + @ = IF
        SWAP DROP
        DUP
        token_id_to_string + 8 + @
        SWAP
        token_id_to_string + 16 + @
        RET
    THEN

    24 +

    FIND_TOKEN_BY_ID_HELP
RET

FUNC FIND_TOKEN_BY_ID ( id -> str len )
    0 FIND_TOKEN_BY_ID_HELP
RET

FUNC FIND_TOKEN_BY_STR_HELP ( str len off -> id )
    DUP token_id_to_string_len @ >= IF
        DROP DROP DROP 0
        RET
    THEN

    OVER
    ( str len off len )

    SWAP
    ( str len len off )

    2SWAP
    ( len off str len )

    OVER
    ( len off str len str )

    SWAP
    ( len off str str len )

    2SWAP
    ( len str len off str )

    ROT ROT
    ( len str str len off )

    DUP
    ( len str str len off off )

    2SWAP
    ( len str off off str len )

    ROT
    ( len str off str len off )

    DUP

    token_id_to_string + 8 + @
    SWAP
    token_id_to_string + 16 + @

    STRNCMP 1 = IF
        token_id_to_string + @
        ROT ROT DROP DROP
        RET
    THEN

    24 +
    ROT ROT SWAP ROT
    FIND_TOKEN_BY_STR_HELP
RET

FUNC FIND_TOKEN_BY_STR ( str len -> id )
    0 FIND_TOKEN_BY_STR_HELP
RET

FUNC ADD_TOKEN ( id -> token_ptr )
    token_struct_len @ TOKEN_STRUCT_SIZE + 4800000 >= IF
        "Out of memory for tokens!" TYPE CR
        SYS_EXIT
    THEN

    ( write enum value )
    token_struct token_struct_len @ + SWAP !

    ( leave the ptr to the token on the stack )
    token_struct token_struct_len @ + 

    ( change the amount of token structs )
    token_struct_len token_struct_len @ TOKEN_STRUCT_SIZE + !
RET

FUNC CREATE_SCOPE ( -> scope_id )
    scope_next_id @
    scope_next_id scope_next_id @ 1 + !
RET

FUNC PUSH_SCOPE ( scope_id -> )
    scope_stack_len @ 1024 >= IF
        "Out of memory to push scope!" TYPE CR
        SYS_EXIT
    THEN

    ( store the id )
    scope_stack scope_stack_len @ + SWAP !

    ( increment length )
    scope_stack_len scope_stack_len @ 8 + !
RET

FUNC PUSH_IF_SCOPE ( scope_id -> )
    if_stack_len @ 1024 >= IF
        "Out of memory in IF stack" TYPE CR
        SYS_EXIT
    THEN

    DUP

    if_stack if_stack_len @ + SWAP !
    if_stack_len if_stack_len @ 8 + !
    PUSH_SCOPE
RET

FUNC PUSH_WHILE_SCOPE ( scope_id -> )
    while_stack_len @ 1024 >= IF
        "Out of memory in WHILE stack" TYPE CR
        SYS_EXIT
    THEN

    DUP

    while_stack while_stack_len @ + SWAP !
    while_stack_len while_stack_len @ 8 + !
    PUSH_SCOPE
RET

( 
pop the scope at the top of the stack
makes sure that the scope belongs to the given IF
scope and that it is also the top IF scope
)

FUNC POP_SCOPE ( scope_id -> )
    scope_stack_len @ 0 = IF
        "Cannot pop scope stack of length 0" TYPE CR
        SYS_EXIT
    THEN

    scope_stack scope_stack_len @ 8 - + @ != IF 
        "Scope at the top of the stack does not match given scope id" TYPE CR
        SYS_EXIT
    THEN

    scope_stack_len scope_stack_len @ 8 - !
RET

FUNC POP_IF_SCOPE ( scope_id -> )
    if_stack_len @ 0 = IF
        "Cannot pop IF stack of length 0" TYPE CR
        SYS_EXIT
    THEN

    DUP 
    if_stack if_stack_len @ 8 - + @ != IF 
        "IF at the top of the stack does not match given id" TYPE CR
        SYS_EXIT
    THEN

    if_stack_len if_stack_len @ 8 - !
    POP_SCOPE
RET

FUNC POP_WHILE_SCOPE ( scope_id -> )
    while_stack_len @ 0 = IF
        "Cannot pop WHILE stack of length 0" TYPE CR
        SYS_EXIT
    THEN

    DUP 
    while_stack while_stack_len @ 8 - + @ != IF 
        "WHILE at the top of the stack does not match given id" TYPE CR
        SYS_EXIT
    THEN

    while_stack_len while_stack_len @ 8 - !
    POP_SCOPE
RET

FUNC IS_TOP_SCOPE_IF ( -> bool )
    scope_stack_len @ 0 = IF
        "Cannot check the top of an empty stack" TYPE CR
        SYS_EXIT
    THEN

    if_stack_len @ 0 = IF
        "Cannot check the top of IF stack when empty" TYPE CR
        SYS_EXIT
    THEN

    scope_stack scope_stack_len @ 8 - + @
    if_stack if_stack_len @ 8 - + @
    =
RET

FUNC IS_TOP_SCOPE_WHILE ( -> bool )
    scope_stack_len @ 0 = IF
        "Cannot check the top of an empty stack" TYPE CR
        SYS_EXIT
    THEN

    while_stack_len @ 0 = IF
        "Cannot check the top of WHILE stack when empty" TYPE CR
        SYS_EXIT
    THEN

    scope_stack scope_stack_len @ 8 - + @
    while_stack while_stack_len @ 8 - + @
    =
RET

FUNC F_FLUSH ( )
    ( output_buffer_length @ . )
    output_file @ output_buffer output_buffer_length @
    SYS_WRITE
    output_buffer_length 0 !
RET

FUNC F_WRITE ( str n )
    ( if the output buffer is out of room, then flush current content )
    DUP output_buffer_length @ + output_buffer_cap > IF
        F_FLUSH
    THEN

    DUP ROT ROT
    output_buffer output_buffer_length @ + ROT ROT MEMCPY
    output_buffer_length output_buffer_length @ ROT + !
RET

FUNC F_QUOTE
    quote 1
    F_WRITE
RET

FUNC F_NEWLINE
    newline 1 
    F_WRITE
RET

FUNC F_WRITELN ( str n )
    F_WRITE
    F_NEWLINE
RET

FUNC POP ( )
    "pop" F_WRITE
RET

FUNC MOV ( )
    "mov" F_WRITE
RET

FUNC AND ( )
    "and" F_WRITE
RET

FUNC CMP ( )
    "cmp" F_WRITE
RET

FUNC JMP ( )
    "jmp" F_WRITE
RET

FUNC JE ( )
    "je" F_WRITE
RET

FUNC JNE ( )
    "jne" F_WRITE
RET

FUNC SETZ ( )
    "setz" F_WRITE
RET

FUNC SETNZ ( )
    "setnz" F_WRITE
RET

FUNC SETG ( )
    "setg" F_WRITE
RET

FUNC SETGE ( )
    "setge" F_WRITE
RET

FUNC SETL ( )
    "setl" F_WRITE
RET

FUNC SETLE ( )
    "setle" F_WRITE
RET

FUNC SETE ( )
    "sete" F_WRITE
RET

FUNC ADD ( )
    "add" F_WRITE
RET

FUNC SUB ( )
    "sub" F_WRITE
RET

FUNC DIV ( )
    "div" F_WRITE
RET

FUNC CALL ( )
    "call" F_WRITE
RET

FUNC COM ( )
    "," F_WRITE
RET

FUNC SPACE ( )
    " " F_WRITE
RET

FUNC _RAX ( )
    "rax" F_WRITE
RET

FUNC _AL ( )
    "al" F_WRITE
RET

FUNC _RBX ( )
    "rbx" F_WRITE
RET

FUNC _RCX ( )
    "rcx" F_WRITE
RET

FUNC _RDX ( )
    "rdx" F_WRITE
RET

FUNC _RDI ( )
    "rdi" F_WRITE
RET

FUNC _R12 ( )
    "r12" F_WRITE
RET

FUNC _SP ( )
    "r12" F_WRITE
RET

FUNC LSQ ( )
    "[" F_WRITE
RET

FUNC RSQ ( )
    "]" F_WRITE
RET

FUNC F_OUTPUT_TEMPLATE
    "section .bss" F_WRITELN
    "   the_stack resb 8192" F_WRITELN

    F_NEWLINE

    "section .text" F_WRITELN
    "   global _start" F_WRITELN

    F_NEWLINE

    "_start:" F_WRITELN
    "mov " F_WRITE
    SP_REG      F_WRITE
    ", the_stack" F_WRITELN

    F_FLUSH
RET

FUNC F_FILL_BUFFER ( )
    input_file @ input_buffer 1024 SYS_READ
    input_buffer_len SWAP !
    input_buffer_curr input_buffer !
RET

FUNC SKIP_WHITESPACE ( )
    input_buffer_len @ 0 = IF
        F_FILL_BUFFER

        input_buffer_len @ 0 = IF
            RET
        ELSE 
            SKIP_WHITESPACE
            RET
        THEN
    THEN

    input_buffer_curr @ @b
    DUP 10 = IF
        DROP

        ( newline character, go down a line )
        line line @ 1 + !
        col 0 !
    ELSE DUP 32 = IF
            DROP

            ( next column )
            col col @ 1 + !
        ELSE
            ( non white-space character )
            DROP 

            RET
        THEN
    THEN

    input_buffer_curr input_buffer_curr @ 1 + !
    input_buffer_len input_buffer_len @ 1 - !

    SKIP_WHITESPACE
RET

( copy literal token to the end quote. Error if there is a newline )
FUNC COPY_TOKEN_TO_QUOTE ( )
    input_buffer_len @ 0 = IF
        F_FILL_BUFFER

        input_buffer_len @ 0 = IF
            RET
        ELSE 
            COPY_TOKEN_TO_QUOTE
            RET
        THEN
    THEN

    input_buffer_curr @ @b
    DUP 10 = IF
        DROP

        "[Error. Line: " TYPE

        line @ INT_TO_STRING TYPE
        " Col: " TYPE
        next_col @ INT_TO_STRING TYPE

        "]: Cannot have newline break in string literal" TYPE CR
        SYS_EXIT
    THEN

    DUP

    token token_len @ + SWAP !b
    token_len token_len @ 1 + !

    next_col next_col @ 1 + !
    input_buffer_curr input_buffer_curr @ 1 + !
    input_buffer_len input_buffer_len @ 1 - !

    34 != IF
        COPY_TOKEN_TO_QUOTE
    THEN
RET

FUNC COPY_TOKEN_TO_WHITESPACE ( )
    input_buffer_len @ 0 = IF
        F_FILL_BUFFER

        input_buffer_len @ 0 = IF
            RET
        ELSE
            COPY_TOKEN_TO_WHITESPACE
            RET
        THEN
    THEN

    input_buffer_curr @ @b
    DUP 
    DUP 10 = SWAP 32 = OR IF
        DROP
        RET
    THEN

    token token_len @ + SWAP !b
    token_len token_len @ 1 + !

    next_col next_col @ 1 + !
    input_buffer_curr input_buffer_curr @ 1 + !
    input_buffer_len input_buffer_len @ 1 - !

    COPY_TOKEN_TO_WHITESPACE
RET

FUNC SKIP_TO_NEWLINE ( )
    input_buffer_len @ 0 = IF
        F_FILL_BUFFER

        input_buffer_len @ 0 = IF
            RET
        ELSE
            SKIP_TO_NEWLINE
            RET
        THEN
    THEN

    input_buffer_curr @ @b

    next_col next_col @ 1 + !
    input_buffer_curr input_buffer_curr @ 1 + !
    input_buffer_len input_buffer_len @ 1 - !

    10 != IF
        SKIP_TO_NEWLINE
    THEN
RET

FUNC GRAB_TOKEN ( -> str len )
    ( store the next line/col so it can be set here )
    ( line/col refers to the *start* of the token )
    line next_line @ !
    col next_col @ !

    token_len 0 !

    SKIP_WHITESPACE

    next_line line @ !
    next_col col @ !

    input_buffer_len @ 0 = IF
        0 0
        RET
    THEN

    input_buffer_curr @ @b
    34 = IF
        token 34 !b
        token_len 1 !
        next_col next_col @ 1 + !

        input_buffer_curr input_buffer_curr @ 1 + !
        input_buffer_len input_buffer_len @ 1 - !

        COPY_TOKEN_TO_QUOTE
    ELSE
        COPY_TOKEN_TO_WHITESPACE
    THEN

    ( check if the token is a comment )
    token token_len @ "//" STRNCMP 1 = IF
        SKIP_TO_NEWLINE
        GRAB_TOKEN
    ELSE
        token
        token_len @
    THEN
RET

( open the file )
"./build/out-stage2.asm" DROP 578 511 SYS_OPEN
output_file SWAP !

( check the cmd line arguements for the input filename )
( put the ptr to the name of the file and the str len onto the stack )
2 = IF
    DROP

    ( filename_ptr )
    DUP
    STR_LEN
ELSE
    "Expected one command line arguement for the input filename!" TYPE CR
    SYS_EXIT
THEN

DROP 0 0 SYS_OPEN
input_file SWAP !

( F_OUTPUT_TEMPLATE )

( read the input file )

F_FILL_BUFFER
( input_file @ input_buffer 1024 SYS_READ )
( input_buffer_len SWAP ! )

FUNC PRINT_TOKEN ( ptr -> )
    "[Line: " TYPE 
    int_to_string_buffer OVER 8 + @ INT_TO_STRING TYPE

    ", Col: " TYPE 
    int_to_string_buffer OVER 16 + @ INT_TO_STRING TYPE

    "] " TYPE

    DUP @
    DUP TOKEN_STRING_LITERAL = IF
        DROP
        "Token: String Literal (id = " TYPE
        DUP 40 + @ PRINT_INT "). " TYPE
        24 + DUP 8 + @ SWAP @ SWAP 
        TYPE CR
        RET
    THEN

    DUP TOKEN_IMM_INT = IF 
        DROP
        "Token: IMM INT. Value: " TYPE 
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_IF = IF
        DROP
        "Token: IF. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_ELSE = IF
        DROP
        "Token: ELSE. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_THEN = IF
        DROP
        "Token: THEN. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_WHILE = IF
        DROP
        "Token: WHILE. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_DO = IF
        DROP
        "Token: DO. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_END = IF
        DROP
        "Token: THEN. ID: " TYPE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        TYPE CR
        RET
    THEN

    DUP TOKEN_VARIABLE_DECL = IF
        DROP
        "Token: Variable Decl. Name: " TYPE
        DUP
        24 + @
        SWAP
        32 + @

        TYPE CR
        RET
    THEN

    DUP TOKEN_MEM_DECL = IF
        DROP
        "Token: Mem Decl. Name: " TYPE
        DUP
        DUP
        24 + @
        SWAP
        32 + @

        TYPE

        ". Length: " TYPE
        40 + @
        .

        RET
    THEN

    DUP TOKEN_VARIABLE_REF = IF
        DROP 

        "Token: Var Ref. Name: " TYPE
        DUP
        24 + @
        SWAP
        32 + @

        TYPE CR
        RET
    THEN

    DUP TOKEN_FUNC_DECL = IF
        DROP
        "Token: Func Decl. Name: " TYPE
        DUP
        24 + @
        SWAP
        32 + @

        TYPE CR
        RET
    THEN

    DUP TOKEN_FUNC_CALL = IF
        DROP 

        "Token: Func Call. Name: " TYPE
        DUP
        24 + @
        SWAP
        32 + @

        TYPE CR
        RET
    THEN

    ( catch-all case )
    DUP FIND_TOKEN_BY_ID DUP 0 != IF
        "Token: " TYPE TYPE CR
        DROP DROP
        RET
    ELSE
        DROP
        DROP
        DROP
        "Unkown token: " TYPE 
        DUP

        24 + @
        SWAP 32 + @
        TYPE CR
 
        RET
    THEN
RET

FUNC PRINT_TOKENS_HELP ( off )
    DUP token_struct_len @ >= IF
        RET
    THEN

    token_struct OVER + PRINT_TOKEN
    TOKEN_STRUCT_SIZE + PRINT_TOKENS_HELP
RET

FUNC PRINT_TOKENS ( )
    0 PRINT_TOKENS_HELP 
    DROP
RET

FUNC IS_VAR_NAME_HELP ( str n ptr -> bool )
    _3DUP 

    DUP STR_LEN

    ( str n ptr  str n ptr n2 )
    STRNCMP IF
        DROP DROP DROP
        1
        RET
    THEN

    DUP STR_LEN 1 + +

    DUP variable_names variable_names_len @ + >= IF
        DROP DROP DROP 0
        RET
    THEN

    IS_VAR_NAME_HELP
RET

FUNC IS_VAR_NAME ( str n -> bool )
    variable_names IS_VAR_NAME_HELP
RET

FUNC IS_METHOD_NAME_HELP ( str n ptr -> bool )
    _3DUP 

    DUP STR_LEN

    ( str n ptr  str n ptr n2 )
    STRNCMP IF
        DROP DROP DROP
        1
        RET
    THEN

    DUP STR_LEN 1 + +

    DUP method_names method_names_len @ + >= IF
        DROP DROP DROP 0
        RET
    THEN

    IS_METHOD_NAME_HELP
RET

FUNC IS_METHOD_NAME ( str n -> bool )
    method_names IS_METHOD_NAME_HELP
RET

( write down the tokens. If a name is referenced, leave it as unkown. If a name is declared, write it down )
( whether it is a method, variable, or memory block )
FUNC PASS_1 
    GRAB_TOKEN
    DUP 0 = IF
        DROP DROP
        RET
    THEN

    ( put token_struct_len onto stack to mark where started )
    ( used to check if a token enum was set )
    ( if there were any recognized tokens )
    ( token_struct_len @ ROT ROT )
    token_struct token_struct_len @ + 0 !
    token_struct token_struct_len @ + 8 + line @ !
    token_struct token_struct_len @ + 16 + col @ !

    ( string literal )
    OVER
    @b 34 = IF
        DUP string_literals_len @ + 1024 >= IF
            "Ran out of space to write string literals"
            TYPE CR
            SYS_EXIT
        THEN

        TOKEN_STRING_LITERAL ADD_TOKEN DUP DUP

        40 + string_literals_id @ !
        string_literals_id string_literals_id @ 1 + !

        ( copy address to the string literal )
        24 + string_literals string_literals_len @ + !

        ( copy length of string literal )
        32 + OVER !

        2DUP
        string_literals string_literals_len @ + ROT ROT MEMCPY

        DUP
        string_literals_len string_literals_len @ ROT + !

        DROP DROP 
        PASS_1
        RET
    THEN

    ( immediate integer )
    2DUP STR_IS_INT 1 = IF
        2DUP

        TOKEN_IMM_INT ADD_TOKEN

        ( copy value to the token )
        24 + 
        ROT ROT STR_TO_INT
        !

        DROP DROP
        PASS_1
        RET
    THEN

    ( IF )
    2DUP "IF" STRNCMP 1 = IF
        DROP DROP
        TOKEN_IF ADD_TOKEN
        
        DUP
        DUP

        ( store the scope id in the token )
        24 + CREATE_SCOPE !

        ( store that there is no ELSE *yet* )
        32 + 0 !

        PUSH_IF_SCOPE

        PASS_1
        RET
    THEN

    ( ELSE ) 
    2DUP "ELSE" STRNCMP IF 
        DROP DROP

        TOKEN_ELSE ADD_TOKEN
        24 +

        IS_TOP_SCOPE_IF 1 != IF
            "Attempted to add ELSE token in a non-IF scope" TYPE CR
            SYS_EXIT
        THEN

        ( store the scope id by getting it from the IF token )
        scope_stack scope_stack_len @ + 8 - @ 

        ( mark the IF token to say that there is an associated ELSE token )
        DUP 32 + 1 !

        24 + @
        !
        
        PASS_1
        RET
    THEN

    ( THEN ) 
    2DUP "THEN" STRNCMP IF 
        DROP DROP

        TOKEN_THEN ADD_TOKEN
        24 +

        IS_TOP_SCOPE_IF 1 != IF
            "Attempted to add THEN token in a non-IF scope" TYPE CR
            SYS_EXIT
        THEN

        ( store the scope id by getting it from the IF token )
        scope_stack scope_stack_len @ + 8 - @ 
        24 + @
        !

        scope_stack scope_stack_len @ + 8 - @ 
        POP_IF_SCOPE
        
        PASS_1
        RET
    THEN

    ( WHILE )
    2DUP "WHILE" STRNCMP 1 = IF
        DROP DROP
        TOKEN_WHILE ADD_TOKEN
        
        DUP
        DUP

        ( store the scope id in the token )
        24 + CREATE_SCOPE !

        ( write down that there is no DO )
        32 + 0 !

        PUSH_WHILE_SCOPE

        PASS_1
        RET
    THEN

    ( DO ) 
    2DUP "DO" STRNCMP IF 
        DROP DROP

        TOKEN_DO ADD_TOKEN
        24 +

        IS_TOP_SCOPE_WHILE 1 != IF
            "Attempted to add DO token in a non-WHILE scope" TYPE CR
            SYS_EXIT
        THEN

        ( store the scope id by getting it from the WHILE token )
        scope_stack scope_stack_len @ + 8 - @ 
        24 + @
        !

        ( store a flag saying that there is a corresponding DO )
        scope_stack scope_stack_len @ + 8 - @ 32 + 1 !
        
        PASS_1
        RET
    THEN

    ( END ) 
    2DUP "END" STRNCMP IF 
        DROP DROP

        TOKEN_END ADD_TOKEN
        24 +

        IS_TOP_SCOPE_WHILE 1 != IF
            "Attempted to add END token in a non-WHILE scope" TYPE CR
            SYS_EXIT
        THEN

        ( store the scope id by getting it from the WHILE token )
        scope_stack scope_stack_len @ + 8 - @ 
        24 + @
        !

        scope_stack scope_stack_len @ + 8 - @ 32 + @ 1 != IF
            "WHILE loop does not have a corresponding DO" TYPE CR
            SYS_EXIT
        THEN

        scope_stack scope_stack_len @ + 8 - @ 
        POP_WHILE_SCOPE
        
        PASS_1
        RET
    THEN

    ( Variable Declaration )

    ( need to keep track of which is true, but keep common code )
    2DUP 2DUP "VARIABLE" STRNCMP 
    ROT ROT   "MEM"      STRNCMP
    2DUP OR
    IF
        IF
            DROP DROP DROP

            ( to use at the end to tell if MEM block )
            1

            TOKEN_MEM_DECL ADD_TOKEN 
        ELSE
            DROP DROP DROP

            ( to use at the end to tell if MEM block )
            0

            TOKEN_VARIABLE_DECL ADD_TOKEN
        THEN

        GRAB_TOKEN

        DUP 0 = IF
            "[Error. Line: " TYPE 
            int_to_string_buffer line @ INT_TO_STRING TYPE

            " Col: " TYPE
            int_to_string_buffer col @ INT_TO_STRING TYPE
            "]: Variable declaration expected a variable name!" TYPE CR

            SYS_EXIT
        THEN

        2DUP FIND_TOKEN_BY_STR 0 != IF
            "[Error. Line: " TYPE 
            int_to_string_buffer line @ INT_TO_STRING TYPE

            " Col: " TYPE
            int_to_string_buffer col @ INT_TO_STRING TYPE
            "]: Variable declaration cannot be a keyword!" TYPE CR
        
            SYS_EXIT
        THEN

        ROT DUP
        24 + variable_names variable_names_len @ + !
        32 + OVER !

        DUP 1 + variable_names_len @ + 1024 >= IF
            "Ran out of memory for variable names!" TYPE CR
            SYS_EXIT
        THEN
        
        DUP ROT ROT
        variable_names variable_names_len @ + ROT ROT MEMCPY

        variable_names_len variable_names_len @ ROT + !
        variable_names variable_names_len @ + 0 !b
        variable_names_len variable_names_len @ 1 + !

        ( if MEM block, also grab size )
        IF
            GRAB_TOKEN
            2DUP STR_IS_INT IF
                STR_TO_INT
                token_struct token_struct_len @ + TOKEN_STRUCT_SIZE - 40 + SWAP !
            ELSE
                "MEM block expected an integer size, but got: " TYPE TYPE CR
                SYS_EXIT
            THEN
        THEN

        PASS_1
        RET
    ELSE
        ( drop the two flags for the OR )
        DROP DROP
    THEN

    ( Method Declaration )
    2DUP "FUNC" STRNCMP 1 = IF
        DROP DROP
        TOKEN_FUNC_DECL ADD_TOKEN

        GRAB_TOKEN

        DUP 0 = IF
            "[Error. Line: " TYPE 
            int_to_string_buffer line @ INT_TO_STRING TYPE

            " Col: " TYPE
            int_to_string_buffer col @ INT_TO_STRING TYPE
            "]: Function declaration expected a name!" TYPE CR

            SYS_EXIT
        THEN

        2DUP FIND_TOKEN_BY_STR 0 != IF
            "[Error. Line: " TYPE 
            int_to_string_buffer line @ INT_TO_STRING TYPE

            " Col: " TYPE
            int_to_string_buffer col @ INT_TO_STRING TYPE
            "]: Function name cannot be a keyword!" TYPE CR
        
            SYS_EXIT
        THEN

        ROT DUP
        24 + method_names method_names_len @ + !
        32 + OVER !

        DUP 1 + method_names_len @ + 1024 >= IF
            "Ran out of memory for method names!" TYPE CR
            SYS_EXIT
        THEN
        
        DUP ROT ROT
        method_names method_names_len @ + ROT ROT MEMCPY

        method_names_len method_names_len @ ROT + !
        method_names method_names_len @ + 0 !b
        method_names_len method_names_len @ 1 + !

        PASS_1
        RET
    THEN

    ( Catch-all keyword case )
    2DUP FIND_TOKEN_BY_STR DUP 0 != IF
        ADD_TOKEN DROP

        DROP DROP 
        PASS_1
        RET
    THEN

    ( Unknown name reference )
    ( TBD in Pass 2 )
    ( tabbed on purpose to match the pattern above )
        ( str len token_id=0 )
        DROP

        ( str len )
        DUP referenced_names_len @ + 1024 >= IF
            "Ran out of memory for referenced names!" TYPE CR
            SYS_EXIT
        THEN

        DUP ROT ROT

        ( len str len )
        referenced_names referenced_names_len @ + ROT ROT MEMCPY

        ( store the starting pointer to the string )
        referenced_names referenced_names_len @ +
        SWAP

        ( str len )
        DUP referenced_names_len @ + 1 +
        referenced_names_len SWAP !

        ( null terminator )
        referenced_names referenced_names_len @ + 0 !b

        ( str len )
        TOKEN_UNKOWN_NAME ADD_TOKEN

        DUP 

        ( str len tok tok )
        32 + 
        ROT

        ( str tok tok+32 len )
        !

        ( str tok )
        24 + SWAP !

        PASS_1
RET

FUNC PASS_2_HELP ( off -> )
    DUP token_struct_len @ >= IF
        DROP
        RET
    THEN

    ( off )
    DUP TOKEN_STRUCT_SIZE + SWAP
    token_struct + 
    DUP @
    
    ( off+8 ptr id )
    DUP TOKEN_UNKOWN_NAME = IF
        ( off+8 token_ptr id )
        SWAP

        DUP DUP

        24 + @ SWAP 32 + @
        2DUP IS_VAR_NAME IF
            DROP DROP
            DUP TOKEN_VARIABLE_REF !
        ELSE 2DUP IS_METHOD_NAME IF
            DROP DROP
            DUP TOKEN_FUNC_CALL !
        ELSE
            DROP DROP
            "Name does not reference a variable or method: " TYPE
            TYPE CR
            SYS_EXIT
        THEN THEN
    THEN

    DROP
    DROP
    PASS_2_HELP
RET

( assign tokens to previously unkonwn names, such as variable references or method calls )
FUNC PASS_2
    0 PASS_2_HELP
RET

FUNC POP_REG ( str n -> )
    "; pop " F_WRITE 2DUP F_WRITELN

    MOV SPACE F_WRITE COM SPACE LSQ _SP RSQ F_NEWLINE
    SUB SPACE _SP COM SPACE "8" F_WRITELN
RET

FUNC PUSH_REG ( str n -> )
    "; push " F_WRITE 2DUP F_WRITELN

    ( mov the register value to stack address )
    MOV SPACE LSQ _SP RSQ COM SPACE F_WRITELN
    ADD SPACE _SP COM SPACE "8" F_WRITELN
RET

FUNC PUSH_INT_AS_STR ( ptr len -> )
    MOV SPACE _RAX COM SPACE F_WRITELN
    "rax" PUSH_REG
RET

FUNC PUSH_INT ( n -> )
    int_to_string_buffer SWAP INT_TO_STRING

    PUSH_INT_AS_STR
RET

( for pushing variable and str addresses )
FUNC PUSH_NAME ( str n -> )
    MOV SPACE _RAX COM SPACE F_WRITELN
    "rax" PUSH_REG
RET

( writes a binary operator to operate on the top two elements on the stack )
FUNC BINARY_OP_STACK ( str n -> )
    ( comment )
    "; " F_WRITE
    2DUP
    F_WRITELN

    "rbx" POP_REG
    "rax" POP_REG

    F_WRITE SPACE _RAX COM SPACE _RBX F_NEWLINE

    "rax" PUSH_REG
RET

FUNC TRANSLATE_TOKEN ( ptr )
    DUP @

    ( ptr id )
    DUP TOKEN_STRING_LITERAL = IF
        DROP

        ( comment )
        "; Push string: " F_WRITE
        DUP 24 + @
        OVER 32 + @
        F_WRITELN

        "; Push address" F_WRITELN
        
        MOV SPACE _RAX COM SPACE 
        STRING_NAME_PREFIX F_WRITE DUP 40 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE F_NEWLINE

        "rax" PUSH_REG
        
        "; Push length" F_WRITELN
        32 + @ PUSH_INT

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_IMM_INT = IF
        DROP
        
        24 + @ DUP

        ( comment )
        "; Push integer: " F_WRITE int_to_string_buffer SWAP INT_TO_STRING F_WRITELN

        PUSH_INT
        F_NEWLINE
        RET
    THEN

    DUP TOKEN_ADD = IF
        DROP DROP

        "add" BINARY_OP_STACK
        
        F_NEWLINE
        RET
    THEN

    DUP TOKEN_SUB = IF
        DROP DROP

        "sub" BINARY_OP_STACK
        
        F_NEWLINE
        RET
    THEN

    DUP TOKEN_MUL = IF
        DROP DROP

        "imul" BINARY_OP_STACK
        
        F_NEWLINE
        RET
    THEN

    DUP TOKEN_DIV = IF
        DROP DROP
        
        "; Divide" F_WRITELN
        "rbx" POP_REG
        "rax" POP_REG

        MOV SPACE _RDX COM SPACE "0" F_WRITELN
        DIV SPACE _RBX F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_MOD = IF
        DROP DROP
        
        "; Divide" F_WRITELN
        "rbx" POP_REG
        "rax" POP_REG

        MOV SPACE _RDX COM SPACE "0" F_WRITELN
        DIV SPACE _RBX F_NEWLINE
        "rdx" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_PRINT_INT = IF
        DROP DROP

        "; Print Int" F_WRITELN

        "rdi" POP_REG
        CALL SPACE "print_int" F_WRITELN

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_TYPE = IF
        DROP DROP

        "; TYPE" F_WRITELN

        "rsi" POP_REG
        "rdi" POP_REG

        CALL SPACE "print" F_WRITELN

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_CR = IF
        DROP DROP

        "; CR" F_WRITELN

        CALL SPACE "print_newline" F_WRITELN

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_STACK_LEN = IF 
        DROP DROP

        "; STACK_LEN" F_WRITELN

        MOV SPACE _RDX COM SPACE "0" F_WRITELN
        MOV SPACE _RAX COM SPACE _SP F_NEWLINE
        SUB SPACE _RAX COM SPACE "the_stack" F_WRITELN
        MOV SPACE _RBX COM SPACE "8" F_WRITELN
        DIV SPACE _RBX
        "rax" PUSH_REG

        RET
    THEN

    DUP TOKEN_DUP = IF
        DROP DROP

        "; DUP" F_WRITELN

        "rax" POP_REG
        "rax" PUSH_REG
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_2DUP = IF
        DROP DROP

        "; 2DUP" F_WRITELN

        "rbx" POP_REG
        "rax" POP_REG

        "rax" PUSH_REG
        "rbx" PUSH_REG

        "rax" PUSH_REG
        "rbx" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_SWAP = IF
        DROP DROP

        "; SWAP" F_WRITELN

        "rbx" POP_REG
        "rax" POP_REG

        "rbx" PUSH_REG
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_2SWAP = IF
        DROP DROP

        "; SWAP" F_WRITELN

        "rbx" POP_REG
        "rax" POP_REG

        "rdx" POP_REG
        "rcx" POP_REG

        "rcx" PUSH_REG
        "rdx" PUSH_REG

        "rax" PUSH_REG
        "rbx" POP_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_DROP = IF
        DROP DROP

        "; DROP" F_WRITELN
        SUB SPACE _SP COM SPACE "8" F_WRITELN

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_OVER = IF
        DROP DROP

        "; OVER" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        "rbx" PUSH_REG
        "rax" PUSH_REG
        "rbx" PUSH_REG

        F_WRITELN
        RET
    THEN

    DUP TOKEN_ROT = IF
        DROP DROP

        "; OVER" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG
        "rcx" POP_REG

        "rcx" PUSH_REG
        "rax" PUSH_REG
        "rbx" PUSH_REG

        F_WRITELN
        RET
    THEN

    DUP TOKEN_IS_EQUAL = IF
        DROP DROP
        "; equality test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETZ SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_NOT_EQUAL = IF
        DROP DROP
        "; unequality test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETNZ SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_GREATER = IF
        DROP DROP
        "; greater than test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETG SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_GREATER_EQ = IF
        DROP DROP
        "; greater than or equal test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETGE SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_LESS = IF
        DROP DROP
        "; less than test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETL SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_LESS_EQ = IF
        DROP DROP
        "; less than or equal test" F_WRITELN
        "rax" POP_REG
        "rbx" POP_REG

        CMP SPACE _RAX COM SPACE _RBX F_NEWLINE
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        SETLE SPACE _AL F_NEWLINE
        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_AND = IF
        DROP DROP

        "and" BINARY_OP_STACK

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_NOT = IF
        DROP DROP

        "rax" POP_REG

        CMP SPACE _RAX SPACE COM "0" F_WRITELN

        MOV SPACE _RAX SPACE COM "0" F_WRITELN
        SETE SPACE _AL F_NEWLINE

        "rax" PUSH_REG

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_OR = IF
        DROP DROP

        "or" BINARY_OP_STACK

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_XOR = IF
        DROP DROP

        "xor" BINARY_OP_STACK

        F_NEWLINE
        RET
    THEN

    DUP TOKEN_IF = IF
        DROP

        "; if" F_WRITELN
        "rax" POP_REG

        ( test the top element on the stack )
        CMP SPACE _RAX COM SPACE "0" F_WRITELN
 
        ( check if there is an ELSE to go with the IF )
        DUP
        DUP 32 + @ 1 = IF
            ( if there is an ELSE jump to it )
            JNE SPACE "else_" F_WRITE 
            24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITELN
        ELSE
            ( if there is nowhere else, jump to THEN )
            JNE SPACE "then_" F_WRITE 
            24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITELN
        THEN

        F_NEWLINE

        ( write the IF label )
        "if_" F_WRITE

        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        F_WRITE

        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_ELSE = IF
        DROP

        "else_" F_WRITE 
        24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE
        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_THEN = IF
        DROP

        "then_" F_WRITE 
        24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE
        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_WHILE = IF
        DROP
        
        "while_" F_WRITE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE
        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_DO = IF
        DROP

        "; condition check" F_WRITELN
        "rax" POP_REG
        CMP SPACE _RAX COM SPACE "0" F_WRITELN

        JE  SPACE "end_" F_WRITE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING
        F_WRITELN
    THEN

    DUP TOKEN_END = IF
        DROP

        "; end" F_WRITELN
        JMP SPACE "while_" F_WRITE
        DUP 24 + @ int_to_string_buffer SWAP INT_TO_STRING
        F_WRITELN

        "end_" F_WRITE
        24 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE

        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_VARIABLE_REF = IF
        DROP

        DUP 24 + @ SWAP 32 + @ 

        2DUP
        "; reference variable: " F_WRITE F_WRITELN

        ( store the address of the var into rax )
        MOV SPACE _RAX COM SPACE F_WRITELN

        "rax" PUSH_REG

        RET
    THEN

    DUP TOKEN_FETCH = IF
        DROP DROP

        "; ptr de-reference" F_WRITELN
        "rax" POP_REG
        MOV SPACE _RAX COM SPACE LSQ _RAX RSQ F_NEWLINE 
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_FETCH_BYTE = IF
        DROP DROP

        "; byte ptr de-reference" F_WRITELN
        "rbx" POP_REG
        MOV SPACE _RAX COM SPACE "0" F_WRITELN
        MOV SPACE _AL COM SPACE LSQ "byte " F_WRITE _RBX RSQ F_NEWLINE 
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_FUNC_DECL = IF
        DROP


        DUP 24 + @ SWAP 32 + @ F_WRITE 
        ":" F_WRITELN

        RET
    THEN

    DUP TOKEN_RET = IF
        DROP DROP

        "ret" F_WRITELN
        F_NEWLINE

        RET
    THEN

    DUP TOKEN_FUNC_CALL = IF
        DROP

        DUP 24 + @ SWAP 32 + @

        CALL SPACE F_WRITELN

        RET
    THEN

    DUP TOKEN_SYS_READ = IF
        DROP DROP

        ( number of bytes to read )
        "rdx" POP_REG

        ( buff ptr )
        "rsi" POP_REG

        ( fd )
        "rdi" POP_REG

        ( syscall number )
        MOV _RAX COM SPACE "0" F_WRITELN

        CALL "syscall" F_WRITELN
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_SYS_WRITE = IF
        DROP DROP

        ( bytes to write )
        "rdx" POP_REG

        ( buff ptr )
        "rsi" POP_REG

        ( fd )
        "rdi" POP_REG

        ( syscall number )
        MOV _RAX COM SPACE "1" F_WRITELN

        CALL "syscall" F_WRITELN
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_SYS_OPEN = IF
        DROP DROP

        ( mode )
        "rdx" POP_REG

        ( flags )
        "rsi" POP_REG

        ( file name )
        "rdi" POP_REG

        ( syscall number )
        MOV _RAX COM SPACE "2" F_WRITELN

        CALL "syscall" F_WRITELN
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_SYS_CLOSE = IF
        DROP DROP

        ( fd )
        "rdx" POP_REG

        ( syscall number )
        MOV _RAX COM SPACE "3" F_WRITELN

        CALL "syscall" F_WRITELN
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN

    DUP TOKEN_SYS_EXIT = IF
        DROP DROP

        MOV SPACE _RDI COM SPACE "0" F_WRITELN

        ( syscall number )
        MOV _RAX COM SPACE "60" F_WRITELN

        CALL "syscall" F_WRITELN
        "rax" PUSH_REG

        F_NEWLINE

        RET
    THEN
RET

VARIABLE in_function

FUNC PASS_TRANSLATE_FUNCTIONS_HELP ( off -> )
    ( check if we have reached the end of the tokens )
    DUP token_struct_len @ >= IF
        DROP
        RET
    THEN

    DUP token_struct + @

    ( assume a function inside of a function has been checked for already )
    DUP TOKEN_FUNC_DECL = IF
        DROP
        in_function 1 !
        scope_stack_len 0 !

        DUP token_struct + TRANSLATE_TOKEN

        TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FUNCTIONS_HELP
        RET
    THEN

    ( have not declared a function and not in a function currently )
    in_function @ 0 = IF
        DROP
        TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FUNCTIONS_HELP
        RET
    THEN

    ( we are in a function )

    ( keep track of the scope stack, to know when we exit the method scope )
    DUP TOKEN_IF = IF
        scope_stack_len scope_stack_len @ 1 + !
    THEN

    DUP TOKEN_THEN = IF
        scope_stack_len scope_stack_len @ 1 - !
    THEN

    DUP TOKEN_WHILE = IF
        scope_stack_len scope_stack_len @ 1 + !
    THEN

    DUP TOKEN_END = IF
        scope_stack_len scope_stack_len @ 1 - !
    THEN

    DUP TOKEN_RET = scope_stack_len @ 0 = AND IF
        in_function 0 !
    THEN

    DROP
    DUP token_struct + TRANSLATE_TOKEN
    TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FUNCTIONS_HELP
RET

FUNC PASS_TRANSLATE_FUNCTIONS ( )
    0 PASS_TRANSLATE_FUNCTIONS_HELP 
RET

FUNC PASS_TRANSLATE_FREE_CODE_HELP ( off -> )
    ( check if we have reached the end of the tokens )
    DUP token_struct_len @ >= IF
        DROP
        RET
    THEN

    DUP token_struct + @

    ( assume a function inside of a function has been checked for already )
    DUP TOKEN_FUNC_DECL = IF
        DROP
        in_function 1 !
        scope_stack_len 0 !

        TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FREE_CODE_HELP
        RET
    THEN

    ( not in a function, translate )
    in_function @ 0 = IF
        DROP
        DUP token_struct + TRANSLATE_TOKEN
        TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FREE_CODE_HELP
        RET
    THEN

    ( we are in a function keep track of when we exit it )

    ( keep track of the scope stack, to know when we exit the method scope )
    DUP TOKEN_IF = IF
        scope_stack_len scope_stack_len @ 1 + !
    THEN

    DUP TOKEN_THEN = IF
        scope_stack_len scope_stack_len @ 1 - !
    THEN

    DUP TOKEN_WHILE = IF
        scope_stack_len scope_stack_len @ 1 + !
    THEN

    DUP TOKEN_END = IF
        scope_stack_len scope_stack_len @ 1 - !
    THEN

    DUP TOKEN_RET = scope_stack_len @ 0 = AND IF
        in_function 0 !
    THEN

    DROP
    TOKEN_STRUCT_SIZE + PASS_TRANSLATE_FREE_CODE_HELP
RET

FUNC PASS_TRANSLATE_FREE_CODE ( )
    0 PASS_TRANSLATE_FREE_CODE_HELP
RET

FUNC PASS_TRANSLATE_BSS_HELP ( off )
    DUP token_struct_len >= IF
        DROP 
        RET
    THEN

    DUP token_struct + 
    DUP @

    ( off ptr id )
    TOKEN_MEM_DECL = IF
        DUP DUP 
        24 + @ SWAP 32 + @
        F_WRITE

        " resb " F_WRITE

        40 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITELN
    ELSE
        DROP 
    THEN

    TOKEN_STRUCT_SIZE + PASS_TRANSLATE_BSS_HELP
RET

FUNC PASS_TRANSLATE_BSS ( )
    "section .bss" F_WRITELN
    "the_stack resb 8192" F_WRITELN
    0 PASS_TRANSLATE_BSS_HELP 
RET

FUNC PASS_TRANSLATE_DATA_HELP ( off )
    DUP token_struct_len >= IF
        DROP 
        RET
    THEN

    DUP token_struct + 
    DUP @

    ( off ptr id )
    DUP TOKEN_VARIABLE_DECL = IF
        DROP
        DUP DUP 
        24 + @ SWAP 32 + @
        F_WRITE

        " dq 0" F_WRITELN
    ELSE TOKEN_STRING_LITERAL = IF
        DUP DUP 

        "string_" F_WRITE
        DUP 40 + @ int_to_string_buffer SWAP INT_TO_STRING F_WRITE
        
        " db " F_WRITE

        24 + @ SWAP 32 + @
        F_WRITE

        ", 0" F_WRITELN
    THEN THEN

    TOKEN_STRUCT_SIZE + PASS_TRANSLATE_DATA_HELP
RET

FUNC PASS_TRANSLATE_DATA ( )
    "section .data" F_WRITELN
    0 PASS_TRANSLATE_DATA_HELP
RET

CR
"Pass 1" TYPE CR

PASS_1

PRINT_TOKENS

CR
"PASS 2" TYPE CR

PASS_2
PRINT_TOKENS

"%include " F_WRITE F_QUOTE "./build/std.asm" F_WRITE F_QUOTE F_NEWLINE
F_NEWLINE

PASS_TRANSLATE_BSS
F_NEWLINE

PASS_TRANSLATE_DATA

"section .text" F_WRITELN

PASS_TRANSLATE_FUNCTIONS
F_NEWLINE

"global _start" F_WRITELN
F_NEWLINE

"_start:" F_WRITELN
MOV SPACE _SP COM SPACE "the_stack" F_WRITELN

( handle the command line arguments )
( grab the contents of the native stack and put them onto the Forth stack )

( argc )

(
rax -> r11
rbx -> r13
rsi -> r14
rdi -> r15
)

"pop rax" F_WRITELN
"pop rsi" F_WRITELN

"mov rbx, rax" F_WRITELN
"jmp push_stack_loop_check" F_WRITELN

"push_stack_loop:" F_WRITELN
"pop rdi" F_WRITELN
"rdi" PUSH_REG
"sub rbx, 1"

"push_stack_loop_check:" F_WRITELN
"cmp rbx, 1" F_WRITELN
"jne push_stack_loop" F_WRITELN

"rsi" PUSH_REG
"rax" PUSH_REG

F_NEWLINE
 
PASS_TRANSLATE_FREE_CODE

"; exit" F_WRITELN
MOV SPACE _RAX COM SPACE "60" F_WRITELN
MOV SPACE _RDI COM SPACE "0"  F_WRITELN
"syscall" F_WRITELN

F_FLUSH

