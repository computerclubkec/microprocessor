; Write an assembly language program to calculate the sum of the series 1² + 2² + 3² + 4² + … up to ten terms and display the result.


.model small
.stack 100
.data
str1 db 'sum of the series 1^2+2^2+3^2+4^2...till 10th term is:$'
sum dw 0
num1 db 1
num2 db 1
ten dw 10

.code
main proc far
    mov ax,@data
    mov ds,ax

    ; print header string
    mov ah,09h
    lea dx,str1
    int 21h

    ; calculation part
    mov cx,0ah         ; 10 terms
l1: mov al,num1
    mul num2           ; AL * num2 = AX
    add sum,ax
    inc num1
    inc num2
    loop l1

    ; print output
    mov ax,sum
    mov dx,00h
    mov cx,00h
    mov bx,0ah
l2: div bx
    add dl,30h
    push dx
    inc cx
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

