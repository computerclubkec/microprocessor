;WAP in 8085 to count number of 1-bits in each of 15 bytes starting at D000H 
;and store counts consecutively at D010H.

LXI H, D000H    ; HL -> source start address (D000H)
LXI D, D010H    ; DE -> destination start address (D010H)
MVI C, 0FH      ; Process 15 bytes

L1: MOV A, M     ; Load byte from [HL]
    MVI B, 08H   ; Bit counter (8 bits per byte)
    MVI E, 00H   ; E = count of 1’s = 0 initially

L2: RAR          ; Rotate accumulator right through carry
    JNC L3       ; If Carry = 0 → bit was 0 → skip increment
    INR E        ; If Carry = 1 → increment count
L3: DCR B        ; Decrease bit counter
    JNZ L2       ; Repeat until all 8 bits checked

    MOV A, E     ; Move count of 1’s into A
    STAX D       ; Store result at [DE]
    INX H        ; Move to next source byte
    INX D        ; Move to next destination byte
    DCR C        ; Decrease byte counter
    JNZ L1       ; Repeat for all 15 bytes

HLT              ; Stop program