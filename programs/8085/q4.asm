; Write an 8085 assembly language program that converts a binary number located at memory address 3000H into a BCD (Binary Coded Decimal) format. The BCD result should be stored at memory locations 4000H, 4001H, and 4002H. Use subroutines 'CONVERT' and 'STORE' to carry out the conversion and storage operations.

LXI H,3000H  ; Load HL register pair with 3000H
MVI B,00H   ; Initialize register B to store the most significant BCD digit (BCD3)
MVI D,00H   ; Initialize register D to store the middle BCD digit (BCD2)

CALL CONVERT ; Call the subroutine to convert the binary number to BCD
CALL STORE   ; Call the subroutine to store the BCD result

HLT          ; Halt the program

; Subroutine to convert binary to BCD
CONVERT: 
    PUSH H      ; Save the current value of HL onto the stack
    MOV A,M     ; Move the binary data to the accumulator

HUND: 
    CPI 64H     ; Check if the binary data is greater than or equal to 64
    JC TENS
    SBI 64H     ; Subtract 64 from the binary data
    INR B       ; Increment the BCD3 digit
    JMP HUND    ; Jump to the HUND label to check again

TENS: 
    CPI 0AH     ; Check if the binary data is greater than or equal to 10
    JC ONES
    SBI 0AH     ; Subtract 10 from the binary data
    INR D       ; Increment the BCD2 digit
    JMP TENS    ; Jump to the TENS label to check again

ONES: 
    POP H       ; If the binary data is less than 10, pop the original value of HL from the stack and return
    RET

; Subroutine to store the BCD result
STORE: 
    LXI H,4000H  ; Load HL register pair with 4000H
    MOV M,A     ; Store the remainder (BCD1) in the memory location pointed to by HL
    INX H       ; Increment the memory location to point to BCD2
    MOV M,D     ; Store BCD2 in the memory location pointed to by HL
    INX H       ; Increment the memory location to point to BCD3
    MOV M,B     ; Store BCD3 in the memory location pointed to by HL
    RET
