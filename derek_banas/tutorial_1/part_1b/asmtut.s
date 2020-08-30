.global _start

_start:
	mov r7, #4	@ Syscall, print
	mov r0, #1	@ Output stream, monitor
	mov r2, #12	@ Length of string
	ldr r1, =message
	swi 0

end:
	mov r7, #1
	swi 0

.data

message:
	.ascii "Hello world\n"

