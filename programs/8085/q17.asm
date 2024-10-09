; Program to add ten 16-bit BCD numbers and store the 24-bit BCD result
; 16-bit numbers are stored starting at memory location 9000H
; Result is stored in B (carry), D (MS byte), and E (LS byte)

LXI H, 9000H     ; Load HL with the starting address of 16-bit numbers
MVI C, 09H       ; Initialize counter to 9 (for 10 iterations)
MVI B, 00H       ; Clear register B, will hold carry for 24-bit result
MOV E, M         ; Move the LS byte of the 1st 16-bit number to E
INX H            ; Increment HL to point to the MS byte
MOV D, M         ; Move the MS byte of the 1st 16-bit number to D

REPEAT:
    INX H        ; Increment HL to point to the LS byte of the next number
    MOV A, M     ; Load LS byte of the next 16-bit number into A
    ADD E        ; Add the LS byte to E (E holds previous LS sum)
    DAA          ; Adjust result to BCD
    MOV E, A     ; Store result back into E

    INX H        ; Increment HL to point to the MS byte of the next number
    MOV A, M     ; Load MS byte of the next 16-bit number into A
    ADC D        ; Add MS byte to D with carry from previous addition
    DAA          ; Adjust result to BCD
    MOV D, A     ; Store result back into D

    JNC PASS     ; If no carry, skip incrementing B
    MOV A, B     ; Load carry byte (B) into A
    ADI 01H      ; Increment carry (since there was a carry from ADC)
    DAA          ; Adjust result to BCD
    MOV B, A     ; Store the updated carry back into B

PASS:
    DCR C        ; Decrement counter C
    JNZ REPEAT   ; If C is not zero, repeat the process

; After all numbers have been added, store the final 24-bit BCD result

    INX H        ; Increment HL to the next memory location
    MOV M, E     ; Store the LS byte of the result at the current location
    INX H        ; Increment HL
    MOV M, D     ; Store the MS byte of the result
    INX H        ; Increment HL
    MOV M, B     ; Store the carry byte (most significant byte of the result)

    HLT          ; Halt the program
