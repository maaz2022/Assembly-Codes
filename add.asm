.model small
.stack 100h
.data
.code
main proc
mov bl, 4
add bl, 3
add bl,48

mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main