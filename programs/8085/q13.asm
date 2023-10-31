; WAP to convert an ASCII number stored at location
; 6100H to binary. store the result to next memory 
; location. use subroutine.

LXI SP, FFFFH    ; initialize stack pointer
LXI H, 6100H     ; initialize H-L pair
MOV A, M         ; move data from memory to accumulator
CALL ASCII_TO_BIN ; call subroutine
INX H            ; increment H-L pair
MOV M, A         ; store the result to memory
HLT              ; terminate program

ASCII_TO_BIN:     ; subroutine to convert ASCII to binary
  SUI 30H         ; subtract 30H from accumulator
  CPI 0AH         ; compare accumulator with 0AH
  RC              ; return if carry flag is set
  SUI 07H         ; subtract 07H from accumulator
  RET             ; return to the main program
