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

VARIABLE line
VARIABLE col

VARIABLE scope_stack
VARIABLE scope_stack_len

