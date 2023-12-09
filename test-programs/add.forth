VARIABLE out_fp

: FIB (n -> n)
    DUP 0 = IF
        DROP
        0
    ELSE DUP 1 = IF
        DROP
        1
    ELSE
        DUP 1 - FIB
        SWAP 2 - FIB
        +
    THEN 
    THEN
;

: PRINT_FIBS (n)
    DUP 0 = IF
        FIB .
    ELSE
        DUP 1 - PRINT_FIBS
        FIB .
    THEN
;

8 PRINT_FIBS

CR CR

"Var Testing!" TYPE CR
1 out_fp ! 

out_fp @ .
