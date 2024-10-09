; Program to change bit D5 of ten numbers stored at address 7600H 
; if the numbers are greater than or equal to 80H

LXI H, 7600H      ; Load HL register pair with the starting address 7600H
MVI C, 0AH        ; Initialize counter to 10 (0AH) for processing 10 numbers

LOOP1: 
    MOV A, M      ; Load the current number from memory (pointed by HL) into register A
    CPI 80H       ; Compare the number in A with 80H
    JC NEXT       ; If A < 80H, skip to NEXT (do not modify)

    XRI 20H       ; Toggle bit D5 (bit 5) of A using XOR with 20H (0010 0000)
    MOV M, A      ; Store the modified value back to the same memory location

NEXT:
    INX H         ; Increment HL to point to the next number in memory
    DCR C         ; Decrement the counter C
    JNZ LOOP1     ; If C is not zero, repeat the loop for the next number

    HLT            ; Halt the program
