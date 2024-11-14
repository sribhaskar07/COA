org 100h    
jmp start
msg:db "subtraction of two 16-bit numbers is:", 0Dh,0Ah,24h
start: mov dx,msg
       mov ah,09h
       int 21h

mov ax,4567h
sub ax,4567h
mov bx,ax
and ax,0F000h
shr ax,12
add ax,30h
cmp ax,39h
jle first_bit
add ax,7h
first_bit: mov dx,ax
           mov ah,02h
           int 21h
mov ax,bx
and ax,0F00h
shr ax,8
add ax,30h
cmp ax,39h
jle second_bit:
add ax,7h
second_bit: mov dx,ax
            mov ah,02h
            int 21h
mov ax,bx
and ax,00F0h
shr ax,4
add ax,30h
cmp ax,39h
jle third_bit:
add ax,7h
third_bit: mov dx,ax
            mov ah,02h
            int 21h 
mov ax,bx
and ax,000Fh
add ax,30h
cmp ax,39h
jle fourth_bit:
add ax,7h
fourth_bit: mov dx,ax
            mov ah,02h
            int 21h
ret