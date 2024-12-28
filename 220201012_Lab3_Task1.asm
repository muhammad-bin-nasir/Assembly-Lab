;Name : Muhammad Bin Nasir
;Reg no: 220201012


include 'emu8086.inc'
.stack 100h
.model small

.data

.code
    main proc  
         
         mov [1100h],1115H 
         mov [1102h],1004H
         
         mov ax,[1100h]
         mov bx,[1102h]    
         
         ADD ax,bx   
         
         mov [1200h],ax  
          
        
    main endp
end  main