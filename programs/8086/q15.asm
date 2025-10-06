; Write an assembly language program for 8086 to sort an array of ten numbers stored in memory. Display the numbers on the screen after sorting.

.model small
.stack 100
.data
array db 8,65,40,9,21,37,7,10,11,50,'$'   ; always define array like this
row db 0
col db 0

.code
main proc far
    mov ax, @data
    mov ds, ax

    mov ch,09h        ; counter = n-1 (10-1)
l3: lea si, array
    mov cl,09h
l2: mov al, [si]
    inc si
    cmp al, [si]
    jb l1
    xchg al, [si]
    xchg al, [si-1]
l1: dec cl
    jnz l2
    dec ch
    jnz l3

    lea si, array     ; SI points to array
    mov cx,0Ah        ; number of elements
nextbyte: mov al, [si] ; take element in AL
    aam               ; ASCII -> BCD conversion
    or ax,3030h

    mov bx,ax
    mov ah,02h
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    mov dl,0
    int 21h

    inc si
    loop nextbyte

    mov ax,4c00h
    int 21h
main endp
end main
