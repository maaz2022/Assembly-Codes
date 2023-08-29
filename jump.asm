.model small
.stack 100h
.data
msg1 db 'numbers are equal$'
msg2 db 'numbers are not equal$'
.code
main proc
mov ax,@data
mov ds,ax

mov dl,'4'
mov ah,1
int 21h

cmp dl,al

je l1
mov dx,offset msg2
mov ah,9
int 21h

mov ah,4ch
int 21h
l1:


mov dx,offset msg1
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main