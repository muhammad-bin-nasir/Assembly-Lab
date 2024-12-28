;Name:  Muhammad Bin Nasir
;RegNo: 220201012


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
    
    sub bl,cl
    
    add bl,48
    ;sub cl,96
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    
    mov dl,bl  
    
    print 'Difference is: '
    
    mov ah,02
    int 21h   
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h   
    
    main endp
end main
   
    
