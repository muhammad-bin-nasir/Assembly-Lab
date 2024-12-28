;Name:  Muhammad Bin Nasir
;Regno: 220201012


include 'emu8086.inc'
.stack 100h

.model small

.data 

  
                                                     
.code
    main proc 
        
         print "Give an integer: "
         

         mov ah,01h
         int 21h
         
         mov cl,al
         mov bl,5
         
         mov dl,10
         mov ah,02h
         int 21h
         mov dl,13
         mov ah,02h
         int 21h 
         
         print "Stored integer is :  " 
         
         add bl,48 
         
         mov dl,bl
         mov ah,02h
         int 21h
         
         mov dl,10
         mov ah,02h
         int 21h
         mov dl,13
         mov ah,02h
         int 21h 
         
         
         
                     
         cmp cl,bl
         
         je equal
         print "Integer provided is not equal to stored integer"
         mov ah,04h
         int 21h
                
         equal:
         print "Integer provided is equal to stored integer"
         mov ah,04h
         int 21h
            
        
        
        
    main endp
end main