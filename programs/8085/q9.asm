; WAP to move a block of 10 bytes of data stored continuously at starting address 6000H to starting address 6004H.
; remember memory is overwriten here

LXI H, 6000H   ; load H-L pair with the starting address
LXI D, 6004H   ; load D-E pair with the destination address
MVI C, 0AH     ; load C with the number of bytes to be moved
LOOP: MOV A, M  ; move data from the memory location pointed by H-L pair to the accumulator
STAX D         ; store data from the accumulator to the memory location pointed by D-E pair
INX H          ; increment H-L pair
INX D          ; increment D-E pair
DCR C          ; decrement C
JNZ LOOP       ; if C is not zero, jump to LOOP
HLT            ; halt
