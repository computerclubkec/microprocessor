	;Write a program for 8085 to check if the number in memory 2000H is even or odd. If the number is even store 22H in next memory location else store 11H in next memory.
	
	LXI H, 2000                  ; Load the address 2000H into HL
	MOV A, M                     ; Load the value at 2000H into A
	INX H                        ; Point HL to the next memory location
	RRC                          ; Rotate A right and check the LSB
	ANI 1H                       ; Perform bitwise AND with 1H (checks odd / even)
	
	JNC EVEN                     ; If even, jump to EVEN
	JMP ODD                      ; If odd, jump to ODD
	
EVEN:
	MVI M, 22H                   ; Store 22H at the address pointed by HL
	JMP DONE                     ; Jump to DONE
	
ODD:
	MVI M, 11H                   ; Store 11H at the address pointed by HL
	JMP DONE
	
DONE:
	HLT                          ; Halt the program
	
	# ORG 2000
	# DB 11                      ; Initial value at memory location 2000H
