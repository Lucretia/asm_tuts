.global _start

_start:
	@mov r1, #0xA
	@add r0, r1, #0x14 
	mov r1, #0x14
	@sub r0, r1, #0xA
	mov r2, #0xA
	@mul r0, r1, r2
	mov r3, #5
	mla r0, r1, r2, r3
	mov r7, #1
	swi 0

