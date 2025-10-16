; Write a program for 8085 to add ten 16-bit BCD numbers from location 4050H
; and store 24 bit BCD result at the end of the ten given numbers.(2062 Chaitra)

LXI B,4050H   ; Starting location of the 16-bit BCD Numbers
LXI D,0000H
LXI H,0000H
MVI A,00H

L2: LDAX B
    ADD L
    INX B
    LDAX B
    ADC H
    JNC L1
    INR E
    
L1: INX B
    MOV A,C
    CPI 0AH
    JC L2

MOV A,L
STAX B
INX B
MOV A,H
STAX B
INX B
MOV A,E
STAX B
HLT
