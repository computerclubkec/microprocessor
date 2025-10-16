; Write a program for 8085 to transfer data from a table to another 
; if the number of ones in the data is greater than four else store 00 
; in the next table.(2065 Kartik)

    LXI H, 5000H  ; SOURCE TABLE 
    LXI D, 6000H  ; DESTINATION TABLE 
    ST: MVI C, 08H  ; NO OF BITS 
    MVI B, 00H  ; NO OF 1’S 
    MOV A, M 
L1: RLC 
    JNC L2 
    INR B 
L2: DCR C 
    JNZ L1 
    MOV A, B 
    CPI 04H 
    MVI A, 00H 
    JC L3 
    JZ L3 
    MOV A, M 
L3: STAX D 
    INX H 
    INX D 
    MOV A, E 
    CPI 0AH  ; SUPPOSE TABLE FOR 10 DATA 
    JNZ ST 
    HLT 
