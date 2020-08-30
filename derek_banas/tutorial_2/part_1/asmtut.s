.global _start

_start:
	mov r1, #5	@ 0101
	mov r2, #9	@ 1001
	@ and r0, r1, r2
	@ orr r0, r1, r2
	@ eor r0, r1, r2
	bic r0, r1, r2	@ r0 <- 0101 AND NOT 1001 = 0101 AND 0110 = 0100 (4)

end:
	mov r7, #1
	swi 0


