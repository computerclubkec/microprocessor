; WAP in 8085 to rotate each byte of a 32-byte table at 
; E000H right by 3 positions and store results at E020H.

LXI H, E000H    ; HL → source start address
LXI D, E020H    ; DE → destination start address
MVI C, 20H      ; C = 32 bytes to process

LOOP: MOV A, M   ; Load byte from [HL] into A
      RRC        ; Rotate right by 1 bit
      RRC        ; Rotate right by 1 bit
      RRC        ; Rotate right by 1 bit (total 3)
      STAX D     ; Store rotated byte into [DE]
      INX H      ; Next source address
      INX D      ; Next destination address
      DCR C      ; Decrement byte counter
      JNZ LOOP   ; Repeat until all 32 bytes done
      HLT        ; Stop