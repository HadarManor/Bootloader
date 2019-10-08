; Inf loop
loop:
	jmp loop

; filling 510 zeros minus the size of the prev code^
times 510-($-$$) db 0

dw 0xaa55
