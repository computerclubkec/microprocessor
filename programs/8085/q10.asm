; Check if bit D6 of a data is 1. If yes move it to registerD else insert FFH in register D.

MVI A, 0FFH    ; Initialize the accumulator with the value on which operation is to be performed
MOV B, A       ; Move FFH to register B
ANI 40H        ; Mask the data with 40H
MVI D, 0FFH    ; Move FFH to register D
JZ LABEL       ; If the result is zero, jump to LABEL
MOV D, B       ; Move the data to register D
LABEL: HLT     ; Terminate the program
