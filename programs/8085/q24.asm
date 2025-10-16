; Write a program to transfer eight-bit numbers from 9080H to 9090H 
; if bit D5 is 1 and D3 is 0. Otherwise transfer data by changing bit D2 
; and D6 from 1 to 0 or from 0 to 1. Assume there are ten numbers.(2064 Shrawan)

    LXI H, 9080H 
    LXI D, 9090H 
    MVI C, 0AH 
L2: MOV A, M 
    ANI 28H 
    CPI 20H 
    JZ L1 
    MOV A, M 
    XRI 44H 
    MOV M, A 
L1: MOV A, M 
    STAX D 
    INX H 
    INX D 
    DCR C 
    JNZ L2 
    HLT