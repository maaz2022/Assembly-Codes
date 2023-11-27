.model small
.stack 100h
.data
str1 db 'Free$'
str2 db 'Palestine$'
.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset str1
mov ah,9
int 21h

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov dx,offset str2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main