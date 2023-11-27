.model small
.stack 100h
.data
nam db 'hello bro$'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,6
mov al,10
mov bh,00010000b
mov ch,0
mov cl,0
mov dl,26
mov dh,26
int 10h

mov dx,offset nam
mov ah,9
int 21h

mov ah,4ch
int 21h
main endp
end main