; Six bytes are stored in memory locations starting at 2050H. Add all the data
; bytes, save any carry generated while adding the data bytes. Display entire
; sum at two output ports and store total carry in 2070H and sum in 2071H.

    LXI H, 2050H
    MVI C, 06H
    MVI B, 00H
    MVI D, 00H
L2: MOV A, M
    ADD B
    MOV B, A
    JNC L1
    INR D
L1: INX H
    DCR C
    JNZ L2
    HLT