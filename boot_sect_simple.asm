
; Print hello to screen
mov ah, 0x0e ;TTY Mode
mov al,'H'
int 0x10
mov al,'E'
int 0x10 
mov al,'L'
int 0x10 
int 0x10 ; L is still stored in interupt
mov al,'O'
int 0x10



; Infinite loop (e9 fd ff)
loop:
    jmp loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55