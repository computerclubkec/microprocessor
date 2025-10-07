; There are two tables T1, T2 in memory having ten eight bit data in each.
; Write a program for 8085 to find the difference of the corresponding 
; element of these two tables.Store the result of each operation on the 
; corresponding element of the third table. Remember that the result should 
; not be negative ; it should be |T1 – T2|.(2064 Poush)

    LXI SP, 2999H 
    LXI H, 5000H  ; TABLE T1 
    LXI D, 6000H  ; TABLE T2 
    MVI C, 0AH  ; COUNTER FOR 10 DATA 
L1: LDAX D 
    MOV B, A 
    MOV A, M 
    CMP B 
    JNC L2 
    MOV A, B 
    MOV B, M 
L2: SUB B 
    PUSH D 
    MVI D, 70H  ; TABLE T3 
    STAX D 
    POP D 
    INX H 
    INX D 
    DCR C 
    JNZ L1 
    HLT