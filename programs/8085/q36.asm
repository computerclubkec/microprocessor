;A set of six data bytes is stored starting from memory location 2050H. 
;The set includes some blank spaces (bytes with zero values). 
;WAP to eliminate the blanks from the block.

MVI C, 06H 
LXI H, 2050H 
LXI B, 2050H 


L2:  MOV A, M 
CPI 00H 
JZ L1 
STAX B 
INX B 
L1:  INX H 
DCR C 
JNZ L2 
HLT 