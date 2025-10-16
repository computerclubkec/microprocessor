; Someone has damaged a program written at 4050H for 8085 microprocessor.
; The damaging is done by changing the bit D7 and bit D5 of each byte.
; The size of the program is 100 bytes. Now write a program for 8085 to 
; correct this damaged program.(2060 Chaitra)

    LXI H, 4050H 
    MVI C, 64H 
L1: MOV A, M 
    ANI 80H   ; 10000000 B 
    RRC  
    RRC 
    MOV B, A 
    MOV A, M 
    ANI 20H   ; 00100000 B 
    RLC 
    RLC 
    MOV C, A 
    MOV A, M 
    ANI 5FH    ; 01011111 B 
    ORA B 
    ORA C 
    STAX H 
    INX H 
    DCR C 
    JNZ L1 
    HLT
