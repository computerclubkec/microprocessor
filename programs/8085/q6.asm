; Load any hex number in register D and E and add these numbers.
; If the sum is greater than FFH, display 01H at the output port FEH otherwise display sum at the same port.

MVI D, 20H     ; Load 20H in register D
MVI C, C9H     ; Load C9H in register C
MOV A, D       ; Move value of register D in accumulator
ADD C          ; Add value of register C in accumulator
JNC LABEL      ; Jump to LABEL if no carry
MVI A, 01H     ; Load 01H in accumulator
LABEL: OUT FEH  ; Display output at port FEH
HLT            ; Halt the program
