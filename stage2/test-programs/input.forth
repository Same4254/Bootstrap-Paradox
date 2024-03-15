FUNC test 
    2 +
RET

VARIABLE thing
"WORKING" TYPE CR

MEM block 1024

block 5 !
block @ .

thing 10 !
thing @ .

1
WHILE DUP 5 < DO
    DUP .
    1 +
END
