include "emu8086.inc"
.stack 100h      

.model small

.data

.code

main proc
    
    call input                ;calls input function
                              ;input puts inputs in bl and cl
                              
    mov ax,cx                 ;we move one input to ax, because only ax can be mutiplied to some other register
    mul bx                    ;multiply ax with bx
    
    printn ""                 ;for next line
    printn "Area is: "
              
    add al,48                 ;ascii correction
    mov dl,al
    mov ah,02h
    int 21h 
    
    mov ah,04h                ;program terminate
    int 21h
    
main endp   

input proc
    printn "Give first mumber: "
    mov ah,01h
    int 21h
    mov bl,al 
    sub bl,48                 ;ascii correction
    
    printn ""
    printn "Give second number: "
    mov ah,01h
    int 21h
    mov cl,al 
    sub cl,48                 ;ascii correction
    
    ret
                              ;return to main function
input endp

end main