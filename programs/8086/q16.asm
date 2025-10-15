; Write an assembly language program to perform the addition of 100 natural even numbers and display the sum in screen. [sum = n(n+1)].

.model small
.stack 100
.data
preset db 'sum of 100 natural number is:$'
sum dw ?

.code
main proc far
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx,preset
    int 21h

    mov cx,99h        ; loop 100 times (counting)
    mov ax,02
    mov dx,04
l1: add ax,dx
    add dx,02h
    loop l1
    mov sum,ax

    mov bx,0ah
l2: mov dx,0000h
    div bx
    inc cx
    add dx,30h
    push dx

    cmp ax,00h
    jne l2
l3: pop dx
    mov ah,02h
    int 21h
    loop l3

    mov ax,4c00h
    int 21h
main endp
end main