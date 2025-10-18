; A set of eight data bytes (4 Pairs) are stored in memory locations starting from
; 1040H. WAP to add two bytes at a time and store the sum in same memory location,
; sum replacing the first byte and the carry replacing the second byte. If any pair
; does not generate a carry,the memory location of the second byte should be cleared
; i.e. store 00H over there.

    MVI C, 04H 
    LXI H, 1040H 
L2: MOV A, M 
    INX H 
    ADD M 
    DCX H 
    MOV M, A 
    INX H 
    MVI M, 00H 
    JNC L1 
    MVI M, 01H 
L1: INX H 
    DCR C 
    JNZ L2 
    HLT