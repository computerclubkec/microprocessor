

; Write an assembly language program to get string input; count no. of vowels and display message ‘even vowels’ on the screen if the count is even otherwise display ‘odd vowels’. 

.model small 
.stack 100 
.data    
maxlen db 100 
aculen db ? 
string db 100 dup('$') 
preset db 'enter a string:$' 
vowel db 'aeiouAEIOU$' 
even db 'even vowel$' 
odd db 'odd vowel$'  
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

    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h  

    mov ax,01h 
    mov dx,count 
    and dx,ax       
    cmp dx,00h 
    jne lx  

    mov ah,09h 
    lea dx,even 
    int 21h 
    jmp le 

lx: mov ah,09h 
    lea dx,odd 
    int 21h    

le: mov ax,4c00h 
    int 21h 
    main endp 
end main 
