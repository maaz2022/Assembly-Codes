.model small
.stack 100h
.data
.code
main proc
mov bx,1
mov cx,5
l1:
push cx
mov cx,bx
l2:
mov dx,'*'
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
loop l2
inc bx
pop cx
loop l1

main endp
end main