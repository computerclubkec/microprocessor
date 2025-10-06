.model small 
.stack 100 
.data    
maxlen db 100 
aculen db ? 
string db 100 dup('$') 
preset db 'enter a string:$' 
vowel db 'aeiouAEIOU$' 
preset2 db 'given string is:$' 
preset3 db 'number of vowel:$' 
count dw 0  
ten dw 10 

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

    mov ch,aculen    
    lea si,string    
l3: lea di,vowel   
    mov al,[si]  
    mov cl,10   
l2: cmp al,[di]  
    jne l1      
    inc count   
l1: inc di      
    dec cl 
    jnz l2 
    inc si 
    dec ch 
    jnz l3  

    mov ax,00h 
    int 10h  

    mov ah,09h 
    lea dx,preset2 
    int 21h  

    mov ah,09h 
    lea dx,string 
    int 21h  

    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h      

    mov ah,09h
    lea dx,preset3 
    int 21h  

    mov ax,count 
    mov cx,00h  
l4: mov dx,00h 
    div ten 
    add dl,30h 
    push dx 
    inc cx 
    cmp ax,00h 
    jnz l4 
l5: pop dx 
    mov ah,02h 
    int 21h 
    loop l5 

    mov ax,4c00h 
    int 21h 
    main endp 
end main 
