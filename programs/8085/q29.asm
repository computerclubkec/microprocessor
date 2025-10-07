; A multiplicand is stored in memory location 1150H and a multiplier is stored 
; in location 1151H. WAP to multiply these numbers and store result from 1160H.

    MVI B,08H
    MVI D,00H
    LXI H,1150H
    MOV A,M
    MOV E,A
    LXI H,1151H
    MOV A,M
L2: RAR
    JNC L1
    LXI H,0000H
    DAD D
L1: XCHG
    DAD H
    XCHG
    DCR B
    LNZ L2
    HLT