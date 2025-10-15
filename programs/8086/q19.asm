; Write down an assembly language program to read a string and display each word on different lines of a clear screen.

.model small
.stack 100
.data
maxlen db 100
actlen db ?
string db 100 dup('$')
preset db 'enter a string:$'
row db 0
col db 0

.code
main proc far
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx,preset
    int 21h

    mov ah,0ah
    lea dx,maxlen
    int 21h

    mov ax,00h       ; clear screen
    int 10h

    lea si,string
l1: mov al,[si]
    cmp al,'$'
    je le
    cmp al,20h       ; compare with space
    jne l2
    inc row
    mov col,00h
    jmp l1

l2: mov ah,02h
    mov dh,row
    mov dl,col
    int 10h

    mov ah,09h
    mov al,[si]
    mov bl,07h       ; white on black
    mov cx,01h
    int 10h
   inc col

l3: inc si
 
    jmp l1

le: mov ax,4c00h
    int 21h
main endp
end main