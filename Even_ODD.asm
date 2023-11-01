org 100h
.data
aw dw 10,13, "Enter The Finite Number: $"
Ev dw 10,13, "Even $"
od dw 10,13, "ODD$"
.code 

main proc 
       
       mov ax,@data
       mov ds,ax
       
       mov ah,09
       mov dx,offset aw
       int 21h
       
       mov ah,01
       int 21h
       
       mov bl,al
       
       mov cl,2
       div cl
       
       mov dl,bl
        
      
       
       cmp ah,0
       
       je EE
      
       
       mov ah,09
       mov dx,offset od
       int 21h
       
       ret
       
       EE:
       mov ah,09
       mov dx,offset Ev
       int 21h
       ret
       main endp

       end main