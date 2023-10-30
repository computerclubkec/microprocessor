; Load any hex number in register D and E and subtract these numbers.
; If there is borrow, display 01H at the output port FEH, otherwise display 80H at the same port.

MVI D, 44H     ; Load 44H in register D
MVI E, 22H     ; Load 22H in register E
MOV A, D       ; Move D to A
SUB E          ; Subtract E from A
MVI A, 80H     ; Load 80H in A
JNC LABEL      ; Jump to LABEL if there is no carry
MVI A, 01H     ; Load 01H in A
LABEL: OUT FEH  ; Store A at output port FEH
HLT            ; Halt the program
