include 'emu8086.inc'

.stack 100h
.model small
.data
      A db 0
      B db 0
      C db 0
               
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        print 'Give the value for first variable (A) : '
        mov ah,01h
        int 21h
        
        mov A,al 
        
        mov dl,10
        mov ah,02
        int 21h  
        
        mov dl,13
        mov ah,02
        int 21h
        
        print 'Give the value for second variable (B) : '
        mov ah,01h
        int 21h
        
        mov B,al
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        print 'Give the value for third variable (C) : '
        mov ah,01h
        int 21h
        
        mov C,al 
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        print 'The result of expression (A+B)-C is : '
        
        mov bl,A
        mov bh,B
        add bl,bh
        mov bh,C
        sub bl,bh 
        
        mov A,bl
        
        mov dl,bl
        mov ah,02h
        int 21h 
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h  
        
        print 'It is stored in variable A.'
        
    main endp
end main
