; Sixteen bytes of data are stored in memory location at 1050H to 105FH.
; Replace each data byte by FF. 

    LXI H, 1050H
    MVI C, 10H
L1: MVI M, FFH
    INX H
    DCR C
    JNZ L1
    HLT