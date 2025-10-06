; Write a program for 8085 to find the smallest number among 
; ten numbers stored at memory location 4500H.(2060 Bhadra)

    LXI H, 4500H 
    MVI C, 0AH 
    MOV A, M 
L2: INX H 
    CMP M 
    JC L1 
    MOV B, A 
    MOV A, M 
    MOV M, B 
L1: DCR C 
    JNZ L2 
    OUT PORT 1 
    HLT
