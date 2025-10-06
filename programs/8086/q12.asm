; Write an assembly language program to read a string from the user, convert it to upper case, count the number of words and display each word in each line and number of words. 

.model small 
.stack 
.data 

maxlen db 100 
actlen db ? 
string db 100 dup ('$') 
preset1 db 'enter a string:$' 
preset2 db 'number of words are:$' 
ten dw 10 
row db 3h 
col db 0h 
count dw 1  

.code 
main proc far 
    mov ax,@data 
    mov ds,ax 
    mov ah,09h 
    lea dx,preset1 
    int 21h 

    mov ah,0ah 
    lea dx,maxlen 
    int 21h 

    mov cl,actlen 
    lea si,string 

l2: mov al,[si] 
    cmp al,20h 
    jne lx      
    inc count 
    jmp l1   

lx: cmp al,97  
    jb l1      
    sub al,32  
    xchg al,[si]  
l1: inc si 
    dec cl 
    jnz l2  

    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h 

    mov ah,09h 
    lea dx, preset2 
    int 21h 
    mov cx,00h 
    mov ax,count 
li: mov dx,00h 
    div ten 
    add dx,30h 
    inc cx 
    push dx 
    cmp ax,00h 
    jnz li 
lo: pop dx 
    mov ah,02h 
    int 21h 
    loop lo  

    lea si,string 
ll: mov al,[si] 
    cmp al,'$'   
    je end 
    cmp al,20h   
    jne lm 
    inc row      
    mov col,00h  
    inc si       
lm: mov al,[si] 
    mov ah,02h 
    mov dh,row 
    mov dl,col 
    int 10h 
    mov ah,09h 
    mov bl,07h  
    mov cx,01h 
    int 10h 
lq: inc si     
    inc col 
    jmp ll  

end: mov ax,4c00h 
    int 21h 
    main endp 
end main 
