;  A dividend is stored in memory location 2020H and a divisor is stored in 2021H.
; WAP to divide these numbers and store quotient and remainder from 2040H.

    MVI C,00H
    LXI H,2021H
    MOV A,M
    MOV D,A
    DCX H
    MOV B,M
L2: MOV A,B
    SUB D
    JC L1
    MOV B,A
    INR C
    JMP L2
L1: MOV L,C
    MOV H,B
    SHLD 2040H
    HLT
