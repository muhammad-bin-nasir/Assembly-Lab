;Name:  Muhammad Bin Nasir
;Regno: 220201012


include 'emu8086.inc'
.stack 100h

.model small

.data
                                                               
.code
    main proc
    
    print 'First number: 100 (Binary)'
    
    mov dl,10
    mov ah,02
    int 21h
    mov dl,13
    mov ah,02
    int 21h  
    
    print 'Second number: 100 (Binary)'
            
    mov dl,10
    mov ah,02
    int 21h
    mov dl,13
    mov ah,02
    int 21h  
    
    print 'Sum: '    
    mov bx,0100b
    mov cx,0100b
    
    add bx,cx 
    add bx,48
    
    mov dx,bx
    mov ah,02h
    int 21h
                     
    main endp
end main