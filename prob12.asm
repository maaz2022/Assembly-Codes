.model small
.stack 100h
.data
string db 'maaz$'
.code
main proc
mov ax,@data
mov ds,ax

mov si,offset string
mov cx,3
l1:
mov bx,[si]
push bx
inc si
loop l1
mov cx,3
l2:
pop dx
mov ah,2
int 21h
loop l2

mov ah,4ch
int 21h
main endp
end main