.model small
.stack 100h
.data
msg db 100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax
mov bl,0
mov si,offset msg
l1:
mov ah,1
int 21h
cmp al,13
je printstr
mov [si],al
inc si
inc bl
jmp l1
printstr:
mov dl,bl
mov ah,2
add dl,48
int 21h
mov ah,4ch
int 21h
main endp
end main