; Write a program in 8085 to multiply two 8-bit data 05H and 08H by using repetitive addition method and store the result at memory location 2500H.

LXI H, 2500H  ; Load the memory location 2500H into the HL register pair.
MVI A, 05H   ; Load the first 8-bit value (05H) into the accumulator (A).
MVI C, 08H   ; Load the second 8-bit value (08H) into the counter (C).

MOV B, A     ; Copy the value from A to B.
MVI A, 00H   ; Initialize the accumulator (A) with 00H to store the result.

LOOP:
  ADD B      ; Add B to A.
  DCR C      ; Decrement C (counter register).
  JNZ LOOP   ; Jump to LOOP if C is not zero.

STA 2500H    ; Store the result from A into memory location 2500H.

HLT         ; Halt the program.