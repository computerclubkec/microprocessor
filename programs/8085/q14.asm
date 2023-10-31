; WAP to convert an Binary number stored at location 
; 6200H to ASCII. store the result to next memory 
; location. use subroutine.

LXI SP, FFFFH    ; Initialize stack pointer
LXI H, 6200H     ; Initialize H-L pair
MOV A, M         ; Move the content of memory location 6200H to accumulator
MOV B, A         ; Move the content of accumulator to register B
RRC              ; Rotate the content of accumulator right
RRC              ; Rotate the content of accumulator right
RRC              ; Rotate the content of accumulator right
RRC              ; Rotate the content of accumulator right
CALL BIN_TO_ASCII ; Call subroutine
INX H            ; Increment H-L pair
MOV M, A         ; Move the content of accumulator to memory location 6201H
MOV A, B         ; Move the content of register B to accumulator
CALL BIN_TO_ASCII ; Call subroutine
INX H            ; Increment H-L pair
MOV M, A         ; Move the content of accumulator to memory location 6202H
HLT              ; Terminate program execution

BIN_TO_ASCII:     ; Subroutine to convert binary to ASCII
  ANI 0FH         ; Mask lower nibble
  CPI 0AH         ; Compare with 0AH
  JC SKIP         ; Jump if carry is set
  ADI 07H         ; Add 07H
SKIP: ADI 30H      ; Add 30H
  RET            ; Return from the subroutine

