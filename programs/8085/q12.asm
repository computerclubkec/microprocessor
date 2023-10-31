; Write a program in 8085 to sort the array of 8-bit datas starting from 8850H in ascending order.

MVI C,03           ; Load immediate value 03 into register C as number of datas to sort

LOOP:              ; Start of the outer loop
    MOV D,C       ; Move the value of C into D
    LXI H,8850H    ; Load register pair HL with the immediate value 8850H

SORT:              ; Start of the inner loop (sorting routine)
    MOV A,M       ; Move the value pointed by HL into A
    INX H         ; Increment HL
    CMP M         ; Compare A with the value pointed by HL
    JC SKIP       ; If A < (value pointed by HL), jump to SKIP
    MOV B,M       ; Move the value pointed by HL into B
    MOV M,A       ; Move A into the location pointed by HL
    DCX H         ; Decrement HL
    MOV M,B       ; Move B into the location pointed by HL
    INX H         ; Increment HL

SKIP:              ; Label for jump
    DCR D         ; Decrement D
    JNZ SORT      ; If D is not zero, jump to SORT
    DCR C         ; Decrement C
    JNZ LOOP      ; If C is not zero, jump to LOOP
    HLT           ; Halt the program

#org 8850          ; Start of the data at memory location 8850
#DB 04H,08H,06H       ; Define bytes with values 04H, 08H, 06H