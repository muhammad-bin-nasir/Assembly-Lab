;Name:  Muhammad Bin Nasir
;Regno: 220201012


include 'emu8086.inc'
.stack 100h

.model small

.data
                                                               
.code
    main proc
    
    print 'Give first number: '
                                                                                                 
    mov ah,01
    int 21h
    
    mov bl,al                  
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    
    print 'Give second number: '
    
    mov ah,01
    int 21h
    
    mov cl,al 
    
    add bl,cl
    
    sub bl,48
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    
    mov dl,bl 
    
    print 'Sum is: '
    
    mov ah,02
    int 21h        
        
        
        
    main endp
end main