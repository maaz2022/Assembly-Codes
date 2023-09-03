; program to print array

.model small
.stack 100h
.data
arr db 'abc'
.code
main proc
mov ax, @data
mov ds,ax
mov si,offset arr
mov cx,3
l1:
mov dx,[si]
mov ah,2
int 21h
inc si
Loop l1
mov ah,4ch
main endp
end main