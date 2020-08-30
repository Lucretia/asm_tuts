.global _start

_start:
	mov r7, #3	@ Syscall, read
	mov r0, #0	@ Input stream, keyboard
	mov r2, #10	@ Length of input
	ldr r1, =message
	swi 0

_write:
	mov r7, #4	@ Syscall, write
	mov r0, #1	@ Output stream, monitor
	mov r2, #5	@ Length of string
	ldr r1, =message
	swi 0

end:
	mov r7, #1
	swi 0

.data

message:
	.ascii " "

