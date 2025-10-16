; Write a program for 8085 to convert and copy the ten lower case ASCII codes to upper case from memory 
; location 9050H to 90A0H if any, otherwise copy as they are. Assume there are fifty codes in the source memory. 
; [Note: ASCII code for A=65 … Z=90, a=97 … z=122].(2063 Kartik)

LXI H,9050H
LXI D,90A0H
MVI C,32H
L2: MOV A,M
    CPI 60H
    JC L1
    SUI 20H
L1: STAX D
    DCR C
    JNZ L2
HLT
