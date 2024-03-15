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

123 test .

// These comments are better

thing @ 10 == IF
    "Thing is set to 10!" TYPE CR
ELSE
    "The thing was not 10" TYPE CR
THEN

