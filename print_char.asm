; Assembly Code to Print a Character
dosseg
.model small
.stack 100h
.data
.code
main proc
    mov dx ,'a'
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
main endp
end main
