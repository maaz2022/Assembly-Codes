dosseg
.model small
.stack 100h
.data
.code
main proc

  mov cx, 2
  L1:
    ; AND operation
    mov bl, 101B
    and bl, 110B
    add bl, 48
    
    ; Print
    mov dl, bl
    mov ah, 2
    int 21h

  loop L1

  mov cx, 2
  L2:
    ; OR operation
    mov bl, 101B
    or bl, 110B
    add bl, 48
    
    ; Print
    mov dl, bl
    mov ah, 2
    int 21h

  loop L2

  mov cx, 2
  L3:
      ; XOR Operation
      mov bl, 101B
      xor bl, 110B
      add bl, 48

      ; Print
      mov dl, bl
      mov ah, 2
      int 21h

  loop L3

  mov ah, 4ch
  int 21h

main endp
end main