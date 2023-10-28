; Write a program for 8085 to convert a 3-digit BCD number stored at memory locations 4000H, 4001H, and 4002H into its binary equivalent and store the result at memory location 5000H.

LXI H,4000H   ; Load HL register pair with the address 4000H
MVI C,00H     ; Initialize register C to store the tens place
MVI B,00H     ; Initialize register B to store the ones place

CALL CONVERT  ; Call the subroutine to convert BCD to binary

HLT           ; Halt the program

; Subroutine to convert BCD to binary
CONVERT: 
    MOV A,M       ; Move the BCD number to the accumulator
    MOV B,A       ; Move the BCD number to register B
    RLC           ; Rotate left the contents of register B, moving the tens place to the carry
    RLC
    RLC
    RLC
    MOV C,A       ; Move the tens place to register C
    MOV A,B       ; Move the BCD number back to the accumulator
    RLC           ; Rotate left the contents of the accumulator, moving the ones place to the carry
    RLC
    RLC
    RLC
    ADD C         ; Add the tens place stored in register C to the ones place in the accumulator
    MOV M,A       ; Store the binary result in the memory location 5000H
    RET
