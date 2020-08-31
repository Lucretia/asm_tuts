@.data

@primes:
@	.word 2
@	.word 3
@	.word 5
@	.word 7

.text

.global _start

_start:
@	ldr r3, =primes
@	ldr r0, [r3, #12]

	ldr r3, =numbers
@	ldr r0, [r3]
@	ldr r0, [r3, #1]
	ldr r0, [r3, #2]

end:
	mov r7, #1
	swi 0

.data

numbers:
	.byte 1, 2, 3, 4, 5
