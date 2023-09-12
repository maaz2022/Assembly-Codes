.model small
.stack 100h
.data
.code
main proc
mov ax,'2'
push ax

mov bx,'4'
push bx

pop ax
pop bx

mov dl,al
mov ah,2
int 21h

mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main