; Write an 8086 assembly language program to separate words from a string. Display each word in a separate line.

.model small
.stack 32
.data
maxlen db 150
actlen db ?
string db 150 dup('$')
preset1 db 'enter the string:$'
row db 01h
col db 00h

.code
main proc far
    mov ax, @data
    mov ds, ax

    mov ah,09h
    lea dx, preset1
    int 21h

    mov ah,0ah
    lea dx, maxleng
    int 21h

    lea si, string
loop1:
    mov al, [si]
    cmp al, '$'
    je endp
    cmp al, ' '
    jne jump1
    inc row
    mov col,00h
    jmp l1

jump1:
    mov ah,02h
    mov dh, row
    mov dl, col
    int 10h

    mov ah,09h
    mov bh,07h
    mov bl,87h
    mov cx,01h
    int 10h

    inc col
l1:
    inc si
    jmp loop1

endp:
    mov ax,4c00h
    int 21h
main endp
end main

