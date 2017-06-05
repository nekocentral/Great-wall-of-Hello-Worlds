 org
   xor ax, ax
   mov ds, ax
   mov si, msg
boot_loop:lodsb
   or al, al 
   jz go_flag   
   mov ah, 0x0E
   int 0x10
   jmp boot_loop

go_flag:
   jmp go_flag

msg   db 'hello world', 13, 10, 0

   times 510-($-$$) db 0
   db 0x55
   db 0xAA
