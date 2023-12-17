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

FUNC IS_INT ( str n )
    DUP 0 = IF DROP DROP 1 RET THEN

    SWAP DUP @b

    DUP 48 < SWAP 57 > OR IF 
        DROP DROP 
        0 
        RET
    THEN

    1 + SWAP
    1 - IS_INT

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
    DUP . 

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

"abcde" 100 STR_FIND_CHAR .
