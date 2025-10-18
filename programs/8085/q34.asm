; WAP to read BCD number stored at memory location 2020H and converts it into
; binary equivalent and finally stores that binary pattern into memory location
; 2030H. [Note: BCD number is the combination from 0 to 9]

    MVI C,0AH
    LXI H,2020H
    MOV A,M
    ANI F0H
    RRC
    RRC
    RRC
    RRC
    MOV B,A
    MOV A,00H
L1: ADD B
    DCR C
    JNZ L1
    MOV D,A
    MOV A,M
    ANI 0FH
    ADD D
    STA 2030H
    HLT