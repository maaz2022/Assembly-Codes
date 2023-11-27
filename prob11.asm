.model small
.stack 100h
.data
msg1 db 'no is odd$'
msg2 db 'no is even$'

.code
main proc
mov ax,@data
mov ds,ax
mov ah,1
int 21h

mov bl,2
div bl
cmp ah,0
je evenn

mov dx,offset msg1
mov ah,9
int 21h
mov ah,4ch
int 21h

evenn:
mov dx,offset msg2
mov ah,9
int 21h
 
mov ah,4ch
int 21h
main endp
end main