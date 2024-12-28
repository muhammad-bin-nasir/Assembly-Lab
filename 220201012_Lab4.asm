include 'emu8086.inc'

.stack 100h

.model small

.data

.code

    main proc      
        

        
        print 'Please give first number: '
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        mov ah,01
        int 21h
        
        mov bl,al
        
        sub bl,48  
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h           
        
        
        print 'Please give second number: '
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        mov ah,01
        int 21h
        
        mov cl,al
        
        sub cl,48 
        
        add bl,cl
        add bl,48
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h 
        

        
        mov dl,bl
        
        print 'The sum is: '
        
        mov ah,02
        int 21h   
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h  
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h                
        
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h                
                        
        
        
        print 'Please give first number: '
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        mov ah,01
        int 21h
        
        mov bl,al
        
        sub bl,48  
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h           
        
        
        print 'Please give second number: '
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h
        
        mov ah,01
        int 21h
        
        mov cl,al
        
        sub cl,48 
        
        sub bl,cl
        add bl,48
        
        mov dl,10
        mov ah,02
        int 21h
        
        mov dl,13
        mov ah,02
        int 21h                
        
        print 'The difference is: '   
    
        
        mov dl,bl
        
        mov ah,02
        int 21h  
        
        
    main endp    
    
end main
    
    