@ While loops

.global _start

_start:
	mov r1, #15		@ 1111
	@ mov r0, r1, lsl #1	@ 1 1110 = 30
	mov r0, r1, lsr #1	@ 0111 = 7

end:
	mov r7, #1
	swi 0

