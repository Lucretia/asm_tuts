.global _start

_start:
	@ adr r0, info
	ldr r3, =info
	ldr r0, [r3]

end:
	mov r7, #1
	swi 0

info:
	.word 10

