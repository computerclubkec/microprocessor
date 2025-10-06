; Write an ALP in 8086 to read a string in parametric way and display number of vowels and digits in clear window.(2079, Back)

.model small           
.stack 100h            

.data
msg1 db "enter a string (end with enter): $"  ; prompt message
msg2 db 0dh,0ah,"number of vowels: $"         ; message before vowel count
msg3 db 0dh,0ah,"number of digits: $"         ; message before digit count

vowelscount dw 0       ; word variable to store vowel count
digitscount dw 0       ; word variable to store digit count

.code
main proc
    mov ax, @data      ; load address of data segment
    mov ds, ax         ; initialize data segment register

    lea dx, msg1       ; load address of prompt message
    mov ah, 09h        ; dos function: print string
    int 21h            ; call dos interrupt

  ; input loop
    read_loop:
        mov ah, 01h        ; dos function: read a character from keyboard
        int 21h            ; read char → al
        cmp al, 0dh        ; compare with carriage return (enter key, ascii 13)
        je display         ; if enter pressed, jump to display results

        ; check vowels
        cmp al, 'a'
        je is_vowel
        cmp al, 'e'
        je is_vowel
        cmp al, 'i'
        je is_vowel
        cmp al, 'o'
        je is_vowel
        cmp al, 'u'
        je is_vowel
        cmp al, 'A'
        je is_vowel
        cmp al, 'E'
        je is_vowel
        cmp al, 'I'
        je is_vowel
        cmp al, 'O'
        je is_vowel
        cmp al, 'U'
        je is_vowel

        ;check digits (0–9)
        cmp al, '0'        ; check if character < '0'
        jb next_char        ; if below '0', not digit
        cmp al, '9'        ; check if character > '9'
        ja next_char        ; if above '9', not digit
        inc digitscount     ; valid digit found → increment digits count
        jmp next_char       ; go to next char


    is_vowel:
        inc vowelscount     ; increment vowels count

    next_char:
        jmp read_loop       ; repeat until enter key is pressed

    ; display results 
    display:
        ; print "number of vowels: "
        lea dx, msg2        ; load message string
        mov ah, 09h         ; dos print string
        int 21h
        mov ax, vowelscount ; move vowel count into ax
        call print_num      ; print decimal value

        ; print "number of digits: "
        lea dx, msg3        ; load message string
        mov ah, 09h         ; dos print string
        int 21h
        mov ax, digitscount ; move digit count into ax
        call print_num      ; print decimal value

        ; exit program
        mov ah, 4ch         ; dos terminate function
        int 21h


    print_num proc
        push ax             ; save ax
        push bx             ; save bx
        push cx             ; save cx
        push dx             ; save dx

        xor cx, cx          ; clear cx (digit counter)
        mov bx, 10          ; divisor = 10

    ;convert number into digits
    pn_loop:
        xor dx, dx          ; clear dx before division
        div bx              ; divide ax by 10 → quotient in ax, remainder in dx
        push dx             ; save remainder (digit)
        inc cx              ; count digits
        cmp ax, 0           ; is quotient = 0?
        jne pn_loop         ; if not zero, continue dividing

    ;print digits in correct order
    pn_print:
        pop dx              ; get digit from stack
        add dl, '0'         ; convert to ascii
        mov ah, 02h         ; dos function: print character
        int 21h
        loop pn_print       ; repeat until all digits printed

        pop dx              ; restore registers
        pop cx
        pop bx
        pop ax
        ret
    print_num endp

main endp
end main

