.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax

mov ah, 1
int 21h
mov cl, al
sub cl, 48
mov dl,10
mov ah, 2
int 21h
mov dl,13
mov ah, 2
int 21h
mov bx, 1
L1:
push cx
mov cx, bx
L2:
Mov dx, bx
add dx, 48
mov ah,2
int 21h
loop L2

mov dl,10
mov ah, 2
int 21h
mov dl,13
mov ah, 2
int 21h
inc bl
pop cx


loop L1
mov ah,4ch
int 21h
main endp
end main