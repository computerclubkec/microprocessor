; Write assembly language program for 8086 to sort five numbers in ascending and descending order.

.model small                                                
.stack 100 
.data 
array db 1,90,45,78,98,'$'
prst1 db 'arranging in ascending order:$'    
prst2 db 'arranging in descending order:$' 

.code 
main proc far 
    mov ax,@data 
    mov ds,ax 
    mov ah,09h 
    lea dx,prst1 
    int 21h 

   mov ch,04h          
lo1: lea si,array 
    mov cl,04h 
lo: mov al,[si]  
    inc si 
    cmp al,[si]  
    jc l1        
    xchg al,[si] 
    xchg al,[si-1] 
l1: dec cl 
    jnz lo 
    dec ch 
    jnz lo1 

    mov cx,05h 
    lea si,array 
lup: mov al,[si]  
    aam  
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
    loop lup 

    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h 
    mov ah,09h 
    lea dx,prst2 
    int 21h 

   mov ch,04h            
lox: lea si,array 
    mov cl,04h 
lu: mov al,[si]  
    inc si 
    cmp al,[si] 
    jnc lq       
    xchg al,[si] 
    xchg al,[si-1] 
lq: dec cl 
    jnz lu 
    dec ch 
    jnz lox 

    mov cx,05h 
    lea si,array 
lux: mov al,[si]  
    aam  
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
    loop lux 

    mov ax,4c00h 
    int 21h 
    main endp 
end main       
