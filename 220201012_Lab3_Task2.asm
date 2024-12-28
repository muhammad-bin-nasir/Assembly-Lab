;Name : Muhammad Bin Nasir
;Reg no: 220201012


include 'emu8086.inc'
.stack 100h
.model small

.data

.code
    main proc  
         
         mov [2000h],55H
         mov [2002h],23H
         
         mov cx,[2000h]
         mov dx,[2002h]
         
         add cx,dx 
          
         mov [2010h],cx
          
        
    main endp
end  main         
             

         
         