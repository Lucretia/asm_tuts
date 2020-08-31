.global main
.func main

main:
	ldr r1, addr_pi
	vldr s0, [r1]

	vcvt.f64.f32 d1, s0

	ldr r0, =out

	vmov r2, r3, d1

	bl printf
	
end:
	mov r7, #1
	swi 0

addr_pi:	.word pi
addr_out:	.word out

.data

pi:	.float 3.141592
out:	.asciz "The value of Pi is %f\n"

.global printf
