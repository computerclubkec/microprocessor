; Sixteen data are stored in memory location at 1050H to 105FH. Transfer the entire
; block of data to new location starting at 1070H. 

    LXI H, 1050H
    MVI C, 10H
    LXI D, 1070H
L1: MOV A, M
    STAX D
    INX H
    INX D
    DCR C
    JNZ L1
    HLT