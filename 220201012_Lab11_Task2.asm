include "emu8086.inc"
.stack 100h

.model small     

.data
    base db ?
    pow db ?
    nl1 db 0ah,0dh, 'enter base: $'
    nl2 db 0ah,0dh, 'enter power: $'

.code
    main proc
    mov ax, @data
    mov ds,ax 
    main endp
    
    enter_base proc
    lea dx,nl1
    mov ah,09h
    int 21h    
    
    
    mov ah,01h
    int 21h
    
    sub al,30h
    mov bl,al
    
    mov base,al 
    enter_base endp
    
    enter_power proc
    lea dx, nl2
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30h
    
    mov cl,al
    dec cl
    mov ax,00
    mov al,base 
    enter_power endp
        
    power proc    
    lb1:
    mul bl
    loop lb1
    
    printn ""
   
    mov cl,10
    div cl
    add ax,3030h
    mov dx,ax
   
    mov ah,02h
    int 21h
    mov dl,dh
    int 21h
   
    mov ah,4ch
    int 21h
   
    power endp
end main