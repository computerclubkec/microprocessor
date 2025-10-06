; Write a program for 8085 to change the bit D5 of ten numbers stored 
; at address 7600H if the numbers are larger than or equal to 80H.(2061 Ashwin)

LXI H,7600H
MVI C,0AH
L2: MOV A,M
    CPI 80H
    JC L1
    XRI 20H
    MOV M,A
L1: INX H
    DCR C
    JNZ L2
