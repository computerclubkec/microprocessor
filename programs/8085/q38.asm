;There are two tables holding twenty data whose starting address is 3000H and 3020H respectively.
;WAP to add the content of first table with the content of second table having same array index.
;Store sum and carry into the third and fourth table indexing from 3040H and 3060H respectively.

LXI B, 3000H
LXI H, 3020H
LXI D, 3040H
NEXT: LDAX B
ADD M
STAX D
PUSH H
PUSH D
JNC L1
MVI E, 01H
JMP CSTORE
L1: MVI E, 00H
CSTORE: LXI H, 3060H
MOV A, L
ADD C
MOV L, A
MOV M, E
POP H
POP D
INX B
INX D
INX H