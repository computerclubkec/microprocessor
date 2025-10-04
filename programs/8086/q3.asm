; Write an assembly language program to input string and display it at middle of the screen.

.model small
.stack 100
.data    

maxlen db 50  
actlen db ? 
string db 50 dup('$')    
col db 40h    
pst2 db 'enter string $' 
capvow db 100 dup('$')  

.code 
main proc far 
    mov ax,@data 
    mov ds,ax      

    mov ah,09h 
    lea dx, pst2 
    int 21h 

    mov ah,0ah 
    lea dx,maxlen 
    int 21h 

    mov ch,actlen 
    lea si, string  

l1: 
    mov ah,02h 
    mov bh,00h 
    mov dh,12h 
    mov dl,col 
    int 10h 

    mov al,[si] 
    cmp al,'$' 
    je l2  
    mov ah,09h 
    mov bh,00h  
    mov bl,07h 
    mov cx,01h 
    int 10h 

    inc si 
    inc col 
    dec ch 
    jnz l1 

l2: mov ax,4c00h 
    int 21h 
    main endp 

end main 
