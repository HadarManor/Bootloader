[org 0x7c00]
	mov bp,0x8000 
	mov sp,bp
	mov bx,0x9000 
	mov dh,2 
	call disk_load
	mov dx,[0x9000]
	call print_hex
	call print_nl
	mov dx,[0x9000+512]
	call print_hex
	jmp $

%include "boot_sect_print.asm"
%include "boot_sect_print_hex.asm"
%include "boot_sect_disk.asm"
times 510 - ($-$$) db 0
dw 0xaa55

;boot sector = sector(1)- of cylinder(0) of head(0) - of hdd(0)

times 256 dw 0xdada ;sector 2 = 512bytes
times 256 dw 0xface ;sector 3 = 512bytes
