.global main
.func main

main:
	ldr r1, addr_num_1
	vldr s0, [r1]

	ldr r2, addr_num_2
	vldr s1, [r2]

	vcmp.f32 s0, s1

	vmrs apsr_nzcv, fpscr

	moveq r1, #1
	movne r1, #0
	@movlt r1, #2
	@movgt r1, #3

	ldr r0, =output

	bl printf
	
end:
	mov r7, #1
	swi 0

addr_num_1:	.word num_1
addr_num_2:	.word num_2

.data

num_1:	.float 1.234
@num_2:	.float 5.678
num_2:	.float 1.234
output:	.asciz "Are numbers equal : %d\n"

.global printf
