; Write an assembly language program for sorting arrays of numbers and display each number in separate line.

.model small
.stack 100
.data
array db 12,45,1,2,33,45,78,99,'$'
row db 0
col db 0

.code
main proc far
    mov ax,@data
    mov ds,ax

    mov ch,07h
l3: lea si,array
    mov cl,07h
l2: mov al,[si]
    inc si
    cmp al,[si]
    jb l1
    xchg al,[si]
    xchg al,[si-1]
l1: dec cl
    jnz l2
    dec ch
    jnz l3

    mov cx,08h
    lea si,array
lp: mov al,[si]
    aam
    or ax,3030h
    mov bx,ax
    mov ah,02h
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    mov dl,00h
    int 21h
    inc si
    mov ah,02h
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    loop lp

ly: mov ax,4c00h
    int 21h
main endp
end main