.model small 
.stack 
.data 

array db 4,19,30,45,55,66,43,23,90,1,'$'  
array2 db '4 19 30 45 55 66 43 23 90 1$' 
pst db 'unsorted array is:$' 
pst2 db 'array after sorting:$' 

.code                                
main proc far 
    mov ax,@data 
    mov ds,ax   
    mov ah,09h 
    lea dx,pst 
    int 21h 
    mov ah,09h 
    lea dx,array2  
    int 21h  

    mov ch,09h  
loop2: lea si,array  
    mov cl,09h 
loop1: mov al,[si] 
    inc si 
    cmp al,[si] 
    jc  n1      
    xchg al,[si] 
    xchg al,[si-1] 
n1: dec cl 
    jnz loop1 
    dec ch 
    jnz loop2 

    mov ah,02h 
    mov dl,0ah 
    int 21h 
    mov dl,0dh 
    int 21h 

    mov ah,09h   
    lea dx,pst2 
    int 21h 
    lea si,array 
    mov cx,0ah 
loop3: mov ah,00h 
    mov al,[si] 
    aam 
    or ax,3030h  
    mov bx,ax    
    mov ah,02h 
    mov dl,bh 
    int 21h 
    mov dl,bl 
    int 21h 
    mov dl,0h     
    int 21h 
    inc si 
    loop loop3  

    mov ax,4c00h 
    int 21h 
main endp 
end main 
