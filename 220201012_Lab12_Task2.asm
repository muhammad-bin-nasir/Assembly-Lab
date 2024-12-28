; Name : Muhammad Bin Nasir
; Reg no: 220201012

include "emu8086.inc"             
             
.stack 100h

.model small

.data
    marks db 4,5,6 
    subj dw "Phy","Eng","Maths"   
    
.code
    main proc   
        mov ax,@data
        mov ds,ax 
        
        mov bx,4
        mov cx,4
        
        l1:       
            cmp cx,bx
            
            jb less
            
            push cx
            mov cx,3
            
            l2: 
                ;mov si,offset subj
                cmp cx,2
                
                jb small
                ja big
                je equal
                
                big:
                    print "             Phy  "
                    jmp endl
                equal:
                    print "Eng   "
                    jmp endl
                small:
                    print "Maths "
                    jmp endl
                    
                endl:
                    loop l2        
                 
                
            
            printn "" 
            pop cx
            
            jmp end2
                        
            less:
            mov si,offset marks
            print "Student "  
            
            mov dx,4
            sub dx,cx 
            add dl,48
            mov ah,02h
            int 21h
            
            push cx
            
            mov cx,3  
            
            l3:      
                print "     "
                mov dl,[si]
                add dl,48
                mov ah,02h
                int 21h
                  
                inc si
                loop l3 
            
          
            
            pop cx    
            mov dl,10
            mov ah,02h
            int 21h
            
            mov dl,13
            mov ah,02h
            int 21h
            
            inc bx 
            
            end2: 
                loop l1
            
           
            
        
        mov ah,4ch
        int 21h    
        
        
        
    main endp
    
    
end main

