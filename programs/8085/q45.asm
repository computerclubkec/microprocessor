; If the content of memory location 2050H is greater than or equal to 64H,
; display 0FH else display FFH.

    LDA 2050H
    CPI 64H
    JC L1
    MOV A, 0FH
    OUT PORT 1
    HLT
L1: MOV A, FFH
    OUT PORT 1
    HLT