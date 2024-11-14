org 100h
jmp start
msg: db "Multiplication of two 8-bit numbers is: ",0Dh,0Ah,24h
start: 
mov dx,msg
mov ah,09h
int 21h
num1 db 12h
num2 db 23h
mov al,num1
mul num2
mov bx,ax
and ax,0F000h
shr ax,12
add ax,30h
cmp ax,39h
jle first
add ax,7h
first:
   mov dl,al
   mov ah,02h
   int 21h 
mov ax,bx
and ax,0F00h
shr ax,8
add ax,30h
cmp ax,39h
jle sec
add ax,7h
sec:
   mov dl,al
   mov ah,02h
   int 21h
mov ax,bx
and ax,00F0h
shr ax,4
add ax,30h
cmp ax,39h
jle third
add ax,7h
third:
   mov dl,al
   mov ah,02h
   int 21h
mov ax,bx
and ax,0000Fh
add ax,30h
cmp ax,39h
jle fourth
add ax,7h
fourth:
   mov dl,al
   mov ah,02h
   int 21h   
mov ah,4Ch
int 21h