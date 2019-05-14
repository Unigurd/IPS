	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _a__str__80_
# was:	la	_a__str__80__addr, _a__str__80_
	ori	$10, $0, 1
# was:	ori	_a__str__80__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__80__init, 0(_a__str__80__addr)
	la	$11, _hej__st_72_
# was:	la	_hej__st_72__addr, _hej__st_72_
	ori	$10, $0, 3
# was:	ori	_hej__st_72__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_hej__st_72__init, 0(_hej__st_72__addr)
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
	ori	$2, $0, 1
# was:	ori	_arg_3_, 0, 1
# 	ori	2,_arg_3_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_2_,2,0
	ori	$2, $0, 0
# was:	ori	_arg_5_, 0, 0
# 	ori	2,_arg_5_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_4_,2,0
	ori	$10, $0, 1
# was:	ori	_not_R_8_, 0, 1
	xori	$2, $10, 1
# was:	xori	_arg_7_, _not_R_8_, 1
# 	ori	2,_arg_7_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_6_,2,0
	ori	$10, $0, 0
# was:	ori	_not_R_11_, 0, 0
	xori	$2, $10, 1
# was:	xori	_arg_10_, _not_R_11_, 1
# 	ori	2,_arg_10_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_9_,2,0
	ori	$10, $0, 1
# was:	ori	_And_L_15_, 0, 1
	lui	$2, 0
# was:	lui	_arg_13_, 0
	beq	$10, $16, _false_14_
# was:	beq	_And_L_15_, R0, _false_14_
	ori	$2, $0, 0
# was:	ori	_And_R_16_, 0, 0
# 	ori	_arg_13_,_And_R_16_,0
_false_14_:
# 	ori	2,_arg_13_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_12_,2,0
	ori	$10, $0, 0
# was:	ori	_And_L_20_, 0, 0
	lui	$2, 0
# was:	lui	_arg_18_, 0
	beq	$10, $16, _false_19_
# was:	beq	_And_L_20_, R0, _false_19_
	ori	$2, $0, 1
# was:	ori	_And_R_21_, 0, 1
# 	ori	_arg_18_,_And_R_21_,0
_false_19_:
# 	ori	2,_arg_18_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_17_,2,0
	ori	$10, $0, 1
# was:	ori	_And_L_25_, 0, 1
	lui	$2, 0
# was:	lui	_arg_23_, 0
	beq	$10, $16, _false_24_
# was:	beq	_And_L_25_, R0, _false_24_
	ori	$2, $0, 1
# was:	ori	_And_R_26_, 0, 1
# 	ori	_arg_23_,_And_R_26_,0
_false_24_:
# 	ori	2,_arg_23_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_22_,2,0
	ori	$10, $0, 0
# was:	ori	_And_L_30_, 0, 0
	lui	$2, 0
# was:	lui	_arg_28_, 0
	beq	$10, $16, _false_29_
# was:	beq	_And_L_30_, R0, _false_29_
	ori	$2, $0, 0
# was:	ori	_And_R_31_, 0, 0
# 	ori	_arg_28_,_And_R_31_,0
_false_29_:
# 	ori	2,_arg_28_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_27_,2,0
	ori	$10, $0, 1
# was:	ori	_Or_L_35_, 0, 1
	lui	$2, 1
# was:	lui	_arg_33_, 1
	bne	$10, $16, _true_34_
# was:	bne	_Or_L_35_, R0, _true_34_
	ori	$2, $0, 0
# was:	ori	_Or_R_36_, 0, 0
# 	ori	_arg_33_,_Or_R_36_,0
_true_34_:
# 	ori	2,_arg_33_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_32_,2,0
	ori	$10, $0, 0
# was:	ori	_Or_L_40_, 0, 0
	lui	$2, 1
# was:	lui	_arg_38_, 1
	bne	$10, $16, _true_39_
# was:	bne	_Or_L_40_, R0, _true_39_
	ori	$2, $0, 1
# was:	ori	_Or_R_41_, 0, 1
# 	ori	_arg_38_,_Or_R_41_,0
_true_39_:
# 	ori	2,_arg_38_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_37_,2,0
	ori	$10, $0, 1
# was:	ori	_Or_L_45_, 0, 1
	lui	$2, 1
# was:	lui	_arg_43_, 1
	bne	$10, $16, _true_44_
# was:	bne	_Or_L_45_, R0, _true_44_
	ori	$2, $0, 1
# was:	ori	_Or_R_46_, 0, 1
# 	ori	_arg_43_,_Or_R_46_,0
_true_44_:
# 	ori	2,_arg_43_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_42_,2,0
	ori	$10, $0, 0
# was:	ori	_Or_L_50_, 0, 0
	lui	$2, 1
# was:	lui	_arg_48_, 1
	bne	$10, $16, _true_49_
# was:	bne	_Or_L_50_, R0, _true_49_
	ori	$2, $0, 0
# was:	ori	_Or_R_51_, 0, 0
# 	ori	_arg_48_,_Or_R_51_,0
_true_49_:
# 	ori	2,_arg_48_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_47_,2,0
	ori	$11, $0, 1
# was:	ori	_Or_L_55_, 0, 1
	lui	$10, 1
# was:	lui	_arg_53_, 1
	bne	$11, $16, _true_54_
# was:	bne	_Or_L_55_, R0, _true_54_
	ori	$11, $0, 1
# was:	ori	_And_L_58_, 0, 1
	lui	$10, 0
# was:	lui	_Or_R_56_, 0
	beq	$11, $16, _false_57_
# was:	beq	_And_L_58_, R0, _false_57_
	ori	$10, $0, 0
# was:	ori	_And_R_59_, 0, 0
# 	ori	_Or_R_56_,_And_R_59_,0
_false_57_:
# 	ori	_arg_53_,_Or_R_56_,0
_true_54_:
	ori	$2, $10, 0
# was:	ori	2, _arg_53_, 0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_52_,2,0
	ori	$10, $0, 1
# was:	ori	_not_R_65_, 0, 1
	xori	$10, $10, 1
# was:	xori	_And_L_63_, _not_R_65_, 1
	lui	$2, 0
# was:	lui	_arg_61_, 0
	beq	$10, $16, _false_62_
# was:	beq	_And_L_63_, R0, _false_62_
	ori	$2, $0, 0
# was:	ori	_And_R_64_, 0, 0
# 	ori	_arg_61_,_And_R_64_,0
_false_62_:
# 	ori	2,_arg_61_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_60_,2,0
	ori	$10, $0, 0
# was:	ori	_not_R_71_, 0, 0
	xori	$10, $10, 1
# was:	xori	_Or_L_69_, _not_R_71_, 1
	lui	$2, 1
# was:	lui	_arg_67_, 1
	bne	$10, $16, _true_68_
# was:	bne	_Or_L_69_, R0, _true_68_
	ori	$2, $0, 1
# was:	ori	_Or_R_70_, 0, 1
# 	ori	_arg_67_,_Or_R_70_,0
_true_68_:
# 	ori	2,_arg_67_,0
	jal	writen
# was:	jal	writen, 2
# 	ori	_letBind_66_,2,0
	la	$2, _hej__st_72_
# was:	la	_mainres_1_, _hej__st_72_
# _hej__st_72_: string "hej"
# 	ori	2,_mainres_1_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function writen
writen:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_b_73_, 2, 0
	ori	$10, $16, 0
# was:	ori	_tmp_76_, _param_b_73_, 0
# 	ori	_letBind_75_,_tmp_76_,0
	la	$2, _true
# was:	la	2, _true
	bne	$10, $0, _wBoolF_77_
# was:	bne	_letBind_75_, 0, _wBoolF_77_
	la	$2, _false
# was:	la	2, _false
_wBoolF_77_:
	jal	putstring
# was:	jal	putstring, 2
	la	$2, _a__str__80_
# was:	la	_tmp_79_, _a__str__80_
# _a__str__80_: string "\n"
# 	ori	_letBind_78_,_tmp_79_,0
# 	ori	2,_tmp_79_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_writenres_74_,_param_b_73_,0
	ori	$2, $16, 0
# was:	ori	2, _writenres_74_, 0
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
_a__str__80_:
	.space	4
	.asciiz	"\n"
	.align	2
_hej__st_72_:
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