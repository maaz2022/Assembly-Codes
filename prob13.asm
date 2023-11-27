.model small
.stack 100h
.data
strr db 100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax

mov si,offset strr
mov bl,0
l1:
mov ah,1
int 21h
cmp al,13
je progend
mov [si],al
inc si
inc bl
jmp l1
progend:
mov dx,offset strr
mov ah,9
int 21h

mov dl,bl
mov ah,2
add dl,48
int 21h
mov ah,4ch
int 21h

main endp
end main