.data
.balign 4

get_val_1:
	.asciz "Number 1 : \n"

.balign 4

get_val_2:
	.asciz "Number 2 : \n"

.balign 4

pattern:
	.asciz "%d"

.balign 4

num_1:	.word 0
num_2:	.word 0
sum:	.word 0

output:
	.asciz "%d + %d = %d\n"

.balign 4

lr_bu:		.word 0
lr_bu_2:	.word 0

.text

sum_vals:
	ldr r2, addr_lr_bu_2
	str lr, [r2]
	
	add r0, r0, r1

	ldr lr, addr_lr_bu_2
	ldr lr, [lr]

	bx lr

addr_lr_bu_2:	.word lr_bu_2


.global main
.func main

main:
	ldr r1, addr_lr_bu
	str lr, [r1]

	ldr r0, addr_get_val_1
	bl printf

	ldr r0, addr_pattern
	ldr r1, addr_num_1
	bl scanf

	ldr r0, addr_get_val_2
	bl printf

	ldr r0, addr_pattern
	ldr r1, addr_num_2
	bl scanf

	ldr r0, addr_num_1
	ldr r0, [r0]
	ldr r1, addr_num_2
	ldr r1, [r1]
	bl sum_vals

	mov r3, r0

	ldr r0, addr_output
	ldr r1, addr_num_1
	ldr r1, [r1]
	ldr r2, addr_num_2
	ldr r2, [r2]
	bl printf

	ldr lr, addr_lr_bu
	ldr lr, [lr]
	bx lr


addr_get_val_1: .word get_val_1
addr_get_val_2: .word get_val_2
addr_pattern:	.word pattern
addr_num_1:	.word num_1
addr_num_2:	.word num_2
addr_sum:	.word sum
addr_output:	.word output
addr_lr_bu:	.word lr_bu

.global printf
.global scanf

