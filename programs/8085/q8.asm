; 16 bytes of data are stored from address 3000H to 300FH.
; Transfer these blocks of data to destination whose starting address is 2000H.

LXI H,3000H ; Initialize H-L pair to point to source
LXI D,2000H ; Initialize D-E pair to point to destination
MVI C,10H ; Initialize counter
BACK: MOV A,M ; Move data from source to accumulator
STAX D ; Store data from accumulator to destination
INX H ; Increment source pointer
INX D ; Increment destination pointer
DCR C ; Decrement counter
JNZ BACK ; Jump to label BACK if counter is not zero
HLT ; Terminate program execution