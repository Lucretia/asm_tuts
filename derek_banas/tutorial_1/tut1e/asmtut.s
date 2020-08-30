.global _start

_start:
	mov r0, #0x14
	b other
	mov r0, #0xB

other:
	mov r7, #1
	swi 0

