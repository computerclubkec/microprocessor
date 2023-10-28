	; Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050 H. Store the largest byte and smallest byte in C070H and C071H.
	MVI C, 20H                   ; Initialize counter C to 20 (loop 20 times)
	LXI H, C050                  ; Load the array address into HL (C050)
	
	MOV B, M                     ; Initialize B with the largest value (first element)
	MOV D, M                     ; Initialize D with the smallest value (first element)
	
	INX H                        ; Move to the next element
	DCR C                        ; Decrement counter C
	
	; Loop to find largest and smallest values
READ:
	MOV A, M                     ; Load the value into A
	CMP B                        ; Compare with current largest value (B)
	JNC LARGEST                  ; Jump to LARGEST if not greater or equal
	CMP D                        ; Compare with current smallest value (D)
	JC SMALLEST                  ; Jump to SMALLEST if smaller
	JMP SKIP                     ; Skip if in between
	
LARGEST:
	MOV B, M                     ; Update largest value
	JMP SKIP                     ; Continue to SKIP
	
SMALLEST:
	MOV D, M                     ; Update smallest value
	
SKIP:
	INX H                        ; Move to the next element
	DCR C                        ; Decrement counter C
	JNZ READ                     ; Continue the loop if counter is not zero
	
	; Store the largest and smallest values
	JMP DONE
DONE:
	MOV A, D                     ; Store smallest value in C070
	STA C070
	MOV A, B                     ; Store largest value in C071
	STA C071
	HLT                          ; Halt the program
	
	#org C050                    ; Array data starting from C050
	#db 9, 2, 4, 6, 1            ; Numbers to be tested
