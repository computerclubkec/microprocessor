	;Write a program for 8085 to add the upper and lower nibble of ten 8 - bit words stored in a table that starts from location 8B20H. Store the separate results in locations just after the table.
	MVI C, 10H                   ; Initialize counter C (loop 10 times)
	LXI H, 8B20H                 ; Source pointer to table start
	LXI D, 3011H                 ; Destination pointer after the table
	
LOOP:
	MOV A, M                     ; Load value at current location into A
	ANI 0F                       ; Extract lower nibble (A) by masking
	MOV B, A
	
	MOV A, M                     ; Load A with original value, extract upper nibble
	ANI F0
	
	RLC                          ; Shift upper nibble left by 4 positions
	RLC
	RLC
	RLC
	
	ADD B                        ; Add lower nibble (B) to upper nibble in A
	
	STAX D                       ; Store the result after the table
	INX H                        ; Increment source pointer
	INX D                        ; Increment destination pointer
	DCR C                        ; Decrement the counter
	JNZ LOOP                     ; Continue loop if counter is not zero
	
	HLT                          ; Halt the program
