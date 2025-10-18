;We have a list of data stored at memory location starting at 2050H.
;The end of the data array is indicated by data byte 00H. Add the set of readings.
;Display the sum at Port 1 and total carry at Port 2.

LXI H, 2050H
MVI B, 00H
MVI C, 00H

L3 MOV A, M
CPI 00H
JZ L1
ADD C
JNZ L2
INR B
L2: MOV C, A
INX H
JMP L3
L1: MOV A, C
OUT PORT 1
MOV A, B
OUT PORT 2
HLT