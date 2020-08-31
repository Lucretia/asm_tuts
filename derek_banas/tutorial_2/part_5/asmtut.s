@ While loops

.global _start

_start:
	mov r0, #50
	mov r1, #2
	b _loop

_decrement:
	subgt r0, r0, r1	@ if [r0] > [r1] (determined by the cmp in _loop) then sub.

_loop:
	cmp r0, r1
	bne _decrement

end:
	mov r7, #1
	swi 0

