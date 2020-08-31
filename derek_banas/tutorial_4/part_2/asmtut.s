.global main
.func main

main:
	ldr r1, addr_num_1
	vldr s0, [r1]

	ldr r2, addr_num_2
	vldr s1, [r2]

	vadd.f32 s2, s0, s1

	vcvt.f64.f32 d1, s2

	ldr r0, =output

	vmov r2, r3, d1

	bl printf
	
end:
	mov r7, #1
	swi 0

addr_num_1:	.word num_1
addr_num_2:	.word num_2

.data

num_1:	.float 1.2345
num_2:	.float 1.1111
output:	.asciz "1.2345 + 1.1111 = %f\n"

.global printf
