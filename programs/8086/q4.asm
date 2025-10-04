; Write an assembly language program to display words of the sentence in separate lines and to count the number of words presented in the entered sentence.

.model small 
.stack 100 
.data    

maxlen db 150  
actlen db ? 
string db 150 dup('$')    

pst2 db 'enter string $' 
pst3 db 'number of words is:$'  
row db 2 
col db 0 

count dw dup('$') 

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

    lea si,string  
    mov bl,actlen 
    inc count 
l1: mov al,[si] 
    cmp al,'$' 
    je lx 
    cmp al,20h 
    jne l2 
    mov col,0 
    inc count 
    inc row 
    inc si 
    jmp l1  

l2:  
    mov ah,02h  
    mov dh,row 
    mov dl,col 
    int 10h 

    mov ah,09h 
    mov bl,07h 
    mov cx,01h 
    int 10h 

    inc col 
    inc si  
    dec bl 
    jnz l1   

lx: inc row 
    mov col,00h       
    lea si,pst3 
lr: mov al,[si] 
    cmp al,'$' 
    je ls 
    mov ah,02h 
    mov dh,row 
    mov dl,col 
    int 10h 

    mov ah,09h 
    mov bl,07h 
    mov cx,01h 
    int 10h 
    inc si 
    inc col 
    jmp lr 

ls:mov col,00h 
   mov cx,00h 
   mov bx,0ah 
   mov ax,count 

ly:mov dx,00h 
   div bx  
   add dl, 30h   
   push dx  
   inc cx 
   cmp ax,00h 
   jne ly  

   inc row 
   mov col,00h 

lz:mov ah,02h 
   mov dh,row 
   mov dl,col   
   int 10h   
   pop dx 
   mov ax,dx 
   mov ah,09h 
   mov bl,07h 
   push cx 
   mov cx,01h 
   int 10h 
   pop cx 
   inc col 
   loop lz 

   mov ax,4c00h 
    int 21h 
    main endp 
end main 
