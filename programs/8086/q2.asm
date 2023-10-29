; Write a program in 8086 assembly to find the largest 8-bit number in an array and display it in ASCII format.

.model small
.stack 100h
.data 
    array db 61h, 54h, 55h, 01h   ; Array of 8-bit numbers
    largest db ?                   ; Variable to store the largest number
    msg db "the largest num is =","$"  ; Message to display the largest number

.code
    main proc far
         mov ax, @data          ; Load the data segment address into AX
         mov ds, ax             ; Set the data segment register to DS
         
         call find_largest      ; Call the subroutine to find the largest number
         
         mov ah, 09h            ; Display the message
         lea dx, msg
         int 21h
            
         call convert_ascii     ; Convert and display the largest number in ASCII format
    
         mov ah, 4ch            ; Exit the program
         int 21h
    main endp 
    
    convert_ascii proc near
        ; Convert the largest number to ASCII and display
       mov al, largest         ; Move the largest number to AL
       mov ah, 00h
       mov bl, 10h             ; Set BL to 10 for division
       div bl                  ; Perform division
       mov bh, ah              ; Save the value of AH
       cmp al, 0Ah
       jb below
       add al, 07h
   below: 
       add al, 30h
       mov ah, 02h
       mov dl, al              ; Display the ASCII character
       int 21h
       
       cmp bh, 0ah
       jb below1
       add bh, 07h
   below1:
       add bh, 30h             ; Convert and display the remainder in ASCII
       mov ah, 02h
       mov dl, bh
       int 21h 
      
      ret  
    convert_ascii endp  
    
    find_largest proc near  
        ; Find the largest number in the array
        mov cx, 4               ; Set the loop counter to the size of the array
        
        lea si, array           ; Load the base address of the array
        
        mov al, [si]            ; Initialize AL with the first element of the array
  above:  
        inc si
        cmp al, [si]
        jnb skip_update         ; If AL is not larger than the data at the current location, skip the update
          mov al, [si]          ; Update AL with the current largest number
  skip_update: 
        loop above              ; Repeat until all elements are compared
        
        mov largest, al          ; Store the largest number in the variable 'largest'
        
        ret                      ; Return from the subroutine
    find_largest endp

