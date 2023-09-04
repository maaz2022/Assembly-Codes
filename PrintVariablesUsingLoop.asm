.model small
.stack 100h
.data
var1 db 'maaz$'
var2 db 'nazeer$'
.code
main proc
mov ax,@data
mov ds,ax

mov cx,10
l1:
 mov  dx, offset var1
       mov  ah, 9
       int  21h

       mov  dx, offset var2
       mov  ah, 9
       int  21h

  ; Carriage Return for new line
       mov  dx, 10
       mov  ah, 2
       int  21h

       mov  dx, 13
       mov  ah, 2
       int  21h
  
       loop L1

       mov  ah, 4ch
       int 21h
main endp
end main

