; Write a program for 8086 to add two 8-bit numbers stored in data1 and data2. 
; Store the result in the variable 'result' and display it in ASCII format. 
; Handle the carry case when the addition results in a carry.

.model small ; Memory model; code <= 64KB, data <= 64KB
.stack 65h ; Stack segment size

.data ; Start of data segment
    data1 db 20h ; First 8-bit number (20h)
    data2 db 11h ; Second 8-bit number (11h)
    result db ?  ; Variable to store the result
    msg db "result is=", "$" ; Message to display the result

.code
main proc far ; Start of the main procedure
    mov ax, @data ; Load the data segment address into AX
    mov ds, ax    ; Assign the data segment register DS

    lea si, data1 ; Load the effective address/offset of data1 into SI
    mov al, [si]  ; Load the value of data1 into AL
    mov ah, [si+1]; Load the value of data2 into AH
    add ah, al    ; Add the values of data1 and data2, result in AH

    ; Check for carry
    jc handle_carry ; Jump to 'handle_carry' if there is a carry
    mov result, ah ; Store the result in the variable
    jmp display_result ; Jump to display the result

handle_carry:
    mov al, ah       ; Store the lower 8 bits in AL
    and al, 0Fh      ; Extract the lower nibble
    add al, 30h      ; Convert to ASCII
    mov dl, al       ; Move the ASCII value to DL for display
    mov ah, 02h      ; Set the display function
    int 21h          ; Display the lower nibble

    mov al, ah       ; Store the higher 8 bits in AL
    shr al, 4        ; Shift to get the higher nibble
    add al, 30h      ; Convert to ASCII
    mov result, al   ; Store the ASCII result in the variable

display_result:
    ; Display the message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; Convert and display the result in ASCII format
    mov al, result
    and al, f0h      ; Mask lower nibble, keeping only upper nibble
    shr al, 04       ; Shift right to get the value in the range 0-9
    cmp al, 0ah
    jb below
    add al, 07h
    below: add al, 30h ; Convert to ASCII character
    mov ah, 02h
    mov dl, al
    int 21h

    mov al, result
    and ah, 0fh      ; Mask upper nibble, keeping only lower nibble
    add al, 30h      ; Convert to ASCII character

    cmp al, 0ah
    jb below1
    add al, 07h
    below1: add al, 30h ; Convert to ASCII character
    mov ah, 02h
    mov dl, al
    int 21h

    ; Exit the program
    mov ah, 4ch
    int 21h
main endp ; End of the main procedure
