MEM block 1024

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
    != IF 0 RET THEN

    ( str1 str2 n)
    STRNCMP_HELP

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

MEM      scope_stack 1024
VARIABLE scope_stack_len
VARIABLE scope_next_id

MEM      if_stack 1024
VARIABLE if_stack_len

MEM      while_stack 1024
VARIABLE while_stack_len

MEM newline 8
newline 10 !

FUNC SP_REG "r12" RET

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

FUNC F_NEWLINE
    newline 1 
    F_WRITE
RET

FUNC F_WRITELN ( str n )
    F_WRITE
    F_NEWLINE
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
        "Col: " TYPE
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
"output-forth.asm" DROP 578 511 SYS_OPEN
output_file SWAP !

"input-forth.forth" DROP 0 0 SYS_OPEN
input_file SWAP !

( F_OUTPUT_TEMPLATE )

( read the input file )

F_FILL_BUFFER
( input_file @ input_buffer 1024 SYS_READ )
( input_buffer_len SWAP ! )

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

GRAB_TOKEN TYPE CR
"Line : " TYPE line @ . 
"Col: " TYPE col @ .
CR

( get string literals, variable names )
FUNC PASS_1 

RET

( get memory blocks )
FUNC PASS_2

RET

( method names )
FUNC PASS_3

RET

( translate functions )
FUNC PASS_4 

RET

( translate free hanging code )
FUNC PASS_5

RET
