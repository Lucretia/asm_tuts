.global _start

_start:
	mov r1, #5
	mov r2, #10
	cmp r1, r2
	beq values_equal
	bgt r1_gt

r1_lt:
	mov r0, #2
	b end

r1_gt:
	mov r0, #3
	b end

values_equal:
	mov r0, #1

end:
	mov r7, #1
	swi 0	


