; Write down an assembly language program to read a string and count the no of vowels in the string. Display the no of vowels in the string and the string without the vowels in it in a clear screen with reverse attribute. 

.model small 
.stack 100 
.data    
maxlen db 100 
aculen db ? 
string db 100 dup('$') 
preset db 'enter a string:$' 
vowel db 'aeiouAEIOU$' 
preset2 db 'number of vowel:$' 
count dw 0  
ten dw 10  
col db 0 
count2 db 0 

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

    mov cx,00h  
    mov ax,count 
l4: mov dx,00h 
    div ten 
    add dx,30h 
    push dx 
    inc cx 
    cmp ax,00h 
    jnz l4 
l5: pop dx 
    mov ah,02h 
    int 21h 
    loop l5     

    mov ah,02h
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h 

    mov ah,00h 
    lea si,string 
    mov cl,aculen 
s:  mov al,[si] 
    cmp al,'a' 
    je r 
    cmp al,'e' 
    je r 
    cmp al,'i' 
    je r 
    cmp al,'o' 
    je r 
    cmp al,'u' 
    je r 
    cmp al,'A' 
    je r 
    cmp al,'E' 
    je r 
    cmp al,'I' 
    je r 
    cmp al,'O' 
    je r 
    cmp al,'U' 
    je r  
    push ax 
    inc count2 
r:  inc si 
    dec cl 
    jnz s    

ll: pop ax 
    mov ah,02h 
    mov dh,01 
    mov dl,col 
    int 10h 
    mov ah,09h 
    mov bl,07h 
    mov cx,01h 
    int 10h 
    inc col 
    dec count2 
    jnz ll 

    mov ax,4c00h 
    int 21h 
    main endp 
end main 
