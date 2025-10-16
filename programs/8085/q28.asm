; A set of ten packed BCD numbers is stored in the memory location starting at 1150H.
; WAP to add these numbers in BCD. If carry is generated save it in register B and 
; adjust it for BCD. The final sum is less than 9999 BCD.

    LXI SP,2000H
    LXI H,1150H
    MVI C,0AH
    XRA A
    MOV B,A
L1: CALL ADD
    INX H
    DCR C
    JNZ L1
    HLT

ADD: ADD M
     DAA
     RNC
     MOV D,A
     MOV A,B
     ADI 01H
     DAA
     MOV B,A
     MOV A,D
     RET