	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _hej__st_48_
# was:	la	_hej__st_48__addr, _hej__st_48_
	ori	$10, $0, 3
# was:	ori	_hej__st_48__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_hej__st_48__init, 0(_hej__st_48__addr)
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$11, $0, 2
# was:	ori	_times_L_4_, 0, 2
	ori	$10, $0, 3
# was:	ori	_times_R_5_, 0, 3
	mul	$2, $11, $10
# was:	mul	_tmp_3_, _times_L_4_, _times_R_5_
# 	ori	_letBind_2_,_tmp_3_,0
# 	ori	2,_letBind_2_,0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 3
# was:	ori	_divide_L_8_, 0, 3
	ori	$11, $0, 2
# was:	ori	_divide_R_9_, 0, 2
	div	$10, $10, $11
# was:	div	_tmp_7_, _divide_L_8_, _divide_R_9_
# 	ori	_letBind_6_,_tmp_7_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_6_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 2
# was:	ori	_plus_L_14_, 0, 2
	ori	$10, $0, 3
# was:	ori	_times_L_16_, 0, 3
	ori	$12, $0, 5
# was:	ori	_times_R_17_, 0, 5
	mul	$10, $10, $12
# was:	mul	_plus_R_15_, _times_L_16_, _times_R_17_
	add	$11, $11, $10
# was:	add	_plus_L_12_, _plus_L_14_, _plus_R_15_
	ori	$10, $0, 6
# was:	ori	_plus_R_13_, 0, 6
	add	$2, $11, $10
# was:	add	_tmp_11_, _plus_L_12_, _plus_R_13_
# 	ori	_letBind_10_,_tmp_11_,0
# 	ori	2,_letBind_10_,0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 10
# was:	ori	_divide_L_22_, 0, 10
	ori	$10, $0, 2
# was:	ori	_divide_R_23_, 0, 2
	div	$11, $11, $10
# was:	div	_minus_L_20_, _divide_L_22_, _divide_R_23_
	ori	$12, $0, 5
# was:	ori	_divide_L_24_, 0, 5
	ori	$10, $0, 3
# was:	ori	_divide_R_25_, 0, 3
	div	$10, $12, $10
# was:	div	_minus_R_21_, _divide_L_24_, _divide_R_25_
	sub	$2, $11, $10
# was:	sub	_tmp_19_, _minus_L_20_, _minus_R_21_
# 	ori	_letBind_18_,_tmp_19_,0
# 	ori	2,_letBind_18_,0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 10
# was:	ori	_plus_L_30_, 0, 10
	ori	$10, $0, 3
# was:	ori	_plus_R_31_, 0, 3
	add	$11, $11, $10
# was:	add	_times_L_28_, _plus_L_30_, _plus_R_31_
	ori	$10, $0, 3
# was:	ori	_times_R_29_, 0, 3
	mul	$2, $11, $10
# was:	mul	_tmp_27_, _times_L_28_, _times_R_29_
# 	ori	_letBind_26_,_tmp_27_,0
# 	ori	2,_letBind_26_,0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 10
# was:	ori	_plus_L_34_, 0, 10
	ori	$12, $0, 3
# was:	ori	_times_L_36_, 0, 3
	ori	$10, $0, 3
# was:	ori	_times_R_37_, 0, 3
	mul	$10, $12, $10
# was:	mul	_plus_R_35_, _times_L_36_, _times_R_37_
	add	$2, $11, $10
# was:	add	_tmp_33_, _plus_L_34_, _plus_R_35_
# 	ori	_letBind_32_,_tmp_33_,0
# 	ori	2,_letBind_32_,0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 10
# was:	ori	_negate_R_42_, 0, 10
	ori	$10, $0, 10
# was:	ori	_negate_R_42_, 0, 10
	sub	$11, $16, $10
# was:	sub	_plus_L_40_, R0, _negate_R_42_
	ori	$10, $0, 3
# was:	ori	_plus_R_41_, 0, 3
	add	$2, $11, $10
# was:	add	_tmp_39_, _plus_L_40_, _plus_R_41_
# 	ori	_letBind_38_,_tmp_39_,0
# 	ori	2,_letBind_38_,0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 20
# was:	ori	_negate_R_47_, 0, 20
	ori	$10, $0, 20
# was:	ori	_negate_R_47_, 0, 20
	sub	$10, $16, $10
# was:	sub	_minus_L_45_, R0, _negate_R_47_
	ori	$11, $0, 3
# was:	ori	_minus_R_46_, 0, 3
	sub	$10, $10, $11
# was:	sub	_tmp_44_, _minus_L_45_, _minus_R_46_
# 	ori	_letBind_43_,_tmp_44_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_43_, 0
	jal	putint
# was:	jal	putint, 2
	la	$2, _hej__st_48_
# was:	la	_mainres_1_, _hej__st_48_
# _hej__st_48_: string "hej"
# 	ori	2,_mainres_1_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_hej__st_48_:
	.space	4
	.asciiz	"hej"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000