(
: FIB 
    DUP 0 = IF
        0
    ELSE DUP 1 = IF
        1
    THEN 
    THEN
    
    DUP 1 - FIB
    SWAP 2 - FIB
    +
;
)

: FIB 
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

7 FIB .

