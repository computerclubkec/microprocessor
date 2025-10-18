;For ten bytes data starting from 1120H, 
;write a program to sort the reading in ascending and in descending order.

START: LXI H, 1120H 
MVI D, 00H 
MVI C, 0AH 
L2: MOV A, M 
INX H 
CMP M 
JC L1 
MOV B, M 
MOV M, A 
DCX H 
MOV M, B 
INX H 
MVI D, 01H 
L1: DCR C 
JNZ L2 
MOV A, D 
RRC 
JC START 
HLT 