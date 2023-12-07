: TEST_FUNC 1 ;

TEST_FUNC
TEST_FUNC

. .

CR

CR

1 1 AND .
1 0 AND .
0 1 AND .
0 0 AND .

CR

1 1 OR .
1 0 OR .
0 1 OR .
0 0 OR .

CR

1 1 XOR .
1 0 XOR .
0 1 XOR .
0 0 XOR .

1 1 != IF
    "Condition is true!" TYPE CR
ELSE
    "Condition is false!" TYPE CR
THEN

2 1 > .
2 1 >= .
2 1 < .
2 1 <= .


5 3 - .
