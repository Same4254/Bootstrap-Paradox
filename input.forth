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

VARIABLE line
VARIABLE col

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
    output_buffer_length @ .
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

FUNC SKIP_WHITESPACE ( str len -> bytes_read )
    DUP 0 = IF
        SWAP DROP
        RET
    THEN

    SWAP
    DUP @b
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
            DROP 

            ( non white-space character )
            DROP DROP
            0
            RET
        THEN
    THEN

    1 + SWAP 1 -
    SKIP_WHITESPACE
    1 +
RET

FUNC SKIP_TO_WHITESPACE ( str len -> bytes_read )
    DUP 0 = IF
        SWAP DROP
        RET
    THEN

    SWAP
    DUP @b
    DUP 10 = SWAP 32 = OR IF
        DROP DROP 0 
        RET
    THEN

    col col @ 1 + !

    1 + SWAP 1 -
    SKIP_TO_WHITESPACE
    1 +
RET
    
FUNC GRAB_TOKEN ( -> str len )
    input_buffer_curr @
    input_buffer_len @

    SKIP_WHITESPACE
    
    DUP

    input_buffer_len input_buffer_len @ ROT - !
    input_buffer_curr input_buffer_curr @ ROT + !

    input_buffer_curr @

    input_buffer_curr @
    input_buffer_len @

    SKIP_TO_WHITESPACE

    DUP
    DUP

    input_buffer_len input_buffer_len @ ROT - !
    input_buffer_curr input_buffer_curr @ ROT + !
RET

( open the file )
"output-forth.asm" DROP 578 511 SYS_OPEN
output_file SWAP !

"input-forth.forth" DROP 0 0 SYS_OPEN
input_file SWAP !

F_OUTPUT_TEMPLATE

( read the input file )
input_file @ input_buffer 1024 SYS_READ
input_buffer_len SWAP !

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
