.model small
.stack 100h
.data
msg1 db 'enter number:$'
msg2 db 'even number$'
msg3 db 'odd number$'
num db ?
.code
main proc
mov ax ,@data
mov ds,ax

mov dx,offset msg1
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48
mov num,al

mov al,num
test al,1

jnz odd
jmp even

odd:
 mov dx, offset msg3
    mov ah, 9
    int 21h
    mov ah,4ch
    int 21h
even:
 mov dx, offset msg2
    mov ah, 9
    int 21h

mov ah,4ch
int 21h

main endp
end main

