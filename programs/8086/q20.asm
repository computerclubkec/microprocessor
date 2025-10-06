; Write a program to read a string, convert the small case letters to upper case and display the converted string in the next line.

.model small
.stack
.data
maxlen db 100
actlen db ?
string db 100 dup('$')
preset1 db 'enter a string:$'

.code
main proc far
    mov ax, @data
    mov ds, ax

    mov ah,09h
    lea dx, preset1
    int 21h

    mov ah,0ah
    lea dx, maxlen
    int 21h

    mov cl, actlen     ; we can’t use cx directly since actlen is db (8-bit)
    lea si, string

l2: mov al, [si]
    cmp al, 20h        ; check for space (ASCII 20h)
    jne lx             ; if not space, check case
    jmp l1

lx: cmp al, 97         ; 65–90 cap, 97–122 small
    jb l1              ; jump if less than 'a'
    sub al, 32         ; convert small to uppercase
    xchg al, [si]      ; store back

l1: inc si
    dec cl
    jnz l2

    mov ah,02h         ; newline
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h

    mov ah,09h
    lea dx, string     ; print converted string
    int 21h

    mov ax,4c00h
    int 21h
main endp
end main
