.global _start

_start:
	mov r7, #3	@ Syscall, keyboard input
	mov r0, #0	@ Input stream, keyboard
	mov r2, #1	@ Total chars to read
	ldr r1, =character
	swi 0

_uppercase:
	ldr r1, =character
	ldr r0, [r1]
	bic r0, r0, #32

	str r0, [r1]

_write:
	mov r7, #4	@ Syscall, output to screen
	mov r0, #1	@ via monitor
	mov r2, #1	@ Number of characters to print
	ldr r1, =character
	swi 0

end:
	mov r7, #1
	swi 0

.data

character:
	.ascii " "

