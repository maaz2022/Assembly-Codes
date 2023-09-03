; program to input and print string

.model small
.stack 100h
.data
str1 db,100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax
l1:
mov ah,1
int 21h
cmp al,13

je prgend
mov [si],al
inc si
jmp l1

prgend:
mov dx,offset str1
mov ah,9
int 21h
mov ah,4ch
main endp
end main