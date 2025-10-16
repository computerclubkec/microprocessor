; Write an 8085 program to display the BCD digits from 0 to 9 the seven 
; segments as in the following diagram. Use the activating data bits same 
; as the segment number as in figure below.(2059 Shrawan)

LXI SP,2999H
LXI H,2050H
MOV M,3FH
INX H
MOV M,06H
INX H
MOV M,5BH
INX H
MOV M,4FH
INX H
MOV M,66H
INX H
MOV M,6DH
INX H
MOV M,7DH
INX H
MOV M,07H
INX H
MOV M,7FH
INX H
MOV M,6FH

LXI B,2060H ; Where the BCD digit is located 
LDAX B
ANI F0H
RRC
RRC
RRC
RRC
CALL CODE
OUT PORT 1
LDAX B
ANI 0FH
CALL CODE
OUT PORT 2
HLT

CODE: LXI H,2050H
      ADD L
      MOV L,A
      MOV A,M
      RET