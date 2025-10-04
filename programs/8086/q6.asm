;  Write an assembly language program to perform the addition of numbers from 1 to n, where n being entered number by user having 3 digits.

.model small 
.stack 32 
.data 
preset1 db 'enter the value of n:$' 
pst2 db 'sum of numbers from 1 to n term is:$' 
hun db 100 
ten db 10 
nvalue db ?  

.code 
main proc far 
    mov ax,@data 
    mov ds,ax 

    mov ah,09h 
    lea dx,preset1 
    int 21h 

    mov ah,01h 
    int 21h 
    sub al,30h 
    mul hun  
    mov nvalue,al 

    mov ah,01h  
    int 21h 
    sub al,30h 
    mul ten  
    add nvalue,al 

    mov ah,01h  
    int 21h 
    sub al,30h 
    add nvalue,al 
    dec nvalue  

    mov cl,nvalue 
    mov ax,01 
    mov bx,02 
l1: add ax,bx  
    inc bx 
    dec cl  
    jnz l1 

    call newline 
    push ax 
    mov ah,09h 
    lea dx,pst2 
    int 21h  
    pop ax 

    mov bx,0ah 
    mov cx,00h 
l2: mov dx,0000h 
    div bx 
    add dx,30h 
    inc cx 
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

newline main proc near 
    push ax 
    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h 
    pop ax 
    ret  
    newline main endp 

end main 
