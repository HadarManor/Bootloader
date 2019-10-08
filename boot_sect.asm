
mov ah, 0x0e ;tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10
	
	
jmp $ ; jump to current address - inf loop


; filling 510 zeros minus the size of the prev code^
times 510-($-$$) db 0
;magic number for the boot sector
dw 0xaa55
