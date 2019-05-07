	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$10, ___str___93_
# was:	la	___str___93__addr, ___str___93_
	ori	$11, $0, 0
# was:	ori	___str___93__init, 0, 0
	sw	$11, 0($10)
# was:	sw	___str___93__init, 0(___str___93__addr)
	la	$11, _Incorre_11_
# was:	la	_Incorre_11__addr, _Incorre_11_
	ori	$10, $0, 16
# was:	ori	_Incorre_11__init, 0, 16
	sw	$10, 0($11)
# was:	sw	_Incorre_11__init, 0(_Incorre_11__addr)
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
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -32
	jal	getint
# was:	jal	getint, 2
	ori	$17, $2, 0
# was:	ori	_letBind_2_, 2, 0
# 	ori	_lt_L_7_,_letBind_2_,0
	ori	$10, $0, 1
# was:	ori	_lt_R_8_, 0, 1
	slt	$10, $17, $10
# was:	slt	_cond_6_, _lt_L_7_, _lt_R_8_
	bne	$10, $0, _then_3_
# was:	bne	_cond_6_, 0, _then_3_
	j	_else_4_
_then_3_:
	la	$2, _Incorre_11_
# was:	la	_tmp_10_, _Incorre_11_
# _Incorre_11_: string "Incorrect Input!"
# 	ori	_letBind_9_,_tmp_10_,0
# 	ori	2,_tmp_10_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$16, $0, 0
# was:	ori	_mainres_1_, 0, 0
	j	_endif_5_
_else_4_:
	ori	$11, $17, 0
# was:	ori	_size_reg_17_, _letBind_2_, 0
	addi	$11, $11, -1
# was:	addi	_size_reg_17_, _size_reg_17_, -1
	bgez	$11, _safe_lab_18_
# was:	bgez	_size_reg_17_, _safe_lab_18_
	ori	$5, $0, 7
# was:	ori	5, 0, 7
	j	_IllegalArrSizeError_
_safe_lab_18_:
	addi	$11, $11, 1
# was:	addi	_size_reg_17_, _size_reg_17_, 1
	ori	$10, $28, 0
# was:	ori	_arr_reg_14_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_24_, _size_reg_17_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_24_, _tmp_24_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_24_
	sw	$11, 0($10)
# was:	sw	_size_reg_17_, 0(_arr_reg_14_)
	addi	$13, $10, 4
# was:	addi	_addr_reg_19_, _arr_reg_14_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_20_, 0, 0
_loop_beg_21_:
	sub	$14, $12, $11
# was:	sub	_tmp_reg_23_, _i_reg_20_, _size_reg_17_
	bgez	$14, _loop_end_22_
# was:	bgez	_tmp_reg_23_, _loop_end_22_
	sw	$12, 0($13)
# was:	sw	_i_reg_20_, 0(_addr_reg_19_)
	addi	$13, $13, 4
# was:	addi	_addr_reg_19_, _addr_reg_19_, 4
	addi	$12, $12, 1
# was:	addi	_i_reg_20_, _i_reg_20_, 1
	j	_loop_beg_21_
_loop_end_22_:
	lw	$18, 0($10)
# was:	lw	_size_reg_13_, 0(_arr_reg_14_)
	ori	$16, $28, 0
# was:	ori	_letBind_12_, 28, 0
	sll	$11, $18, 2
# was:	sll	_tmp_31_, _size_reg_13_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_31_, _tmp_31_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_31_
	sw	$18, 0($16)
# was:	sw	_size_reg_13_, 0(_letBind_12_)
	addi	$20, $16, 4
# was:	addi	_addr_reg_25_, _letBind_12_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_26_, 0, 0
	addi	$21, $10, 4
# was:	addi	_elem_reg_15_, _arr_reg_14_, 4
_loop_beg_27_:
	sub	$10, $19, $18
# was:	sub	_tmp_reg_29_, _i_reg_26_, _size_reg_13_
	bgez	$10, _loop_end_28_
# was:	bgez	_tmp_reg_29_, _loop_end_28_
	lw	$2, 0($21)
# was:	lw	_res_reg_16_, 0(_elem_reg_15_)
# 	ori	2,_res_reg_16_,0
	jal	read_fun
# was:	jal	read_fun, 2
# 	ori	_tmp_reg_30_,2,0
# 	ori	_res_reg_16_,_tmp_reg_30_,0
	addi	$21, $21, 4
# was:	addi	_elem_reg_15_, _elem_reg_15_, 4
	sw	$2, 0($20)
# was:	sw	_res_reg_16_, 0(_addr_reg_25_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_25_, _addr_reg_25_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_26_, _i_reg_26_, 1
	j	_loop_beg_27_
_loop_end_28_:
# 	ori	_size_reg_37_,_letBind_2_,0
	addi	$17, $17, -1
# was:	addi	_size_reg_37_, _size_reg_37_, -1
	bgez	$17, _safe_lab_38_
# was:	bgez	_size_reg_37_, _safe_lab_38_
	ori	$5, $0, 15
# was:	ori	5, 0, 15
	j	_IllegalArrSizeError_
_safe_lab_38_:
	addi	$17, $17, 1
# was:	addi	_size_reg_37_, _size_reg_37_, 1
	ori	$14, $28, 0
# was:	ori	_arr_reg_34_, 28, 0
	sll	$10, $17, 2
# was:	sll	_tmp_44_, _size_reg_37_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_44_, _tmp_44_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_44_
	sw	$17, 0($14)
# was:	sw	_size_reg_37_, 0(_arr_reg_34_)
	addi	$10, $14, 4
# was:	addi	_addr_reg_39_, _arr_reg_34_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_40_, 0, 0
_loop_beg_41_:
	sub	$11, $12, $17
# was:	sub	_tmp_reg_43_, _i_reg_40_, _size_reg_37_
	bgez	$11, _loop_end_42_
# was:	bgez	_tmp_reg_43_, _loop_end_42_
	sw	$12, 0($10)
# was:	sw	_i_reg_40_, 0(_addr_reg_39_)
	addi	$10, $10, 4
# was:	addi	_addr_reg_39_, _addr_reg_39_, 4
	addi	$12, $12, 1
# was:	addi	_i_reg_40_, _i_reg_40_, 1
	j	_loop_beg_41_
_loop_end_42_:
	lw	$11, 0($14)
# was:	lw	_size_reg_33_, 0(_arr_reg_34_)
	ori	$10, $28, 0
# was:	ori	_letBind_32_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_80_, _size_reg_33_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_80_, _tmp_80_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_80_
	sw	$11, 0($10)
# was:	sw	_size_reg_33_, 0(_letBind_32_)
	addi	$12, $10, 4
# was:	addi	_addr_reg_45_, _letBind_32_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_46_, 0, 0
	addi	$14, $14, 4
# was:	addi	_elem_reg_35_, _arr_reg_34_, 4
_loop_beg_47_:
	sub	$15, $13, $11
# was:	sub	_tmp_reg_49_, _i_reg_46_, _size_reg_33_
	bgez	$15, _loop_end_48_
# was:	bgez	_tmp_reg_49_, _loop_end_48_
	lw	$17, 0($14)
# was:	lw	_res_reg_36_, 0(_elem_reg_35_)
# 	ori	_eq_L_55_,_res_reg_36_,0
	ori	$18, $0, 0
# was:	ori	_eq_R_56_, 0, 0
	ori	$15, $0, 0
# was:	ori	_cond_54_, 0, 0
	bne	$17, $18, _false_57_
# was:	bne	_eq_L_55_, _eq_R_56_, _false_57_
	ori	$15, $0, 1
# was:	ori	_cond_54_, 0, 1
_false_57_:
	bne	$15, $0, _then_51_
# was:	bne	_cond_54_, 0, _then_51_
	j	_else_52_
_then_51_:
# 	ori	_arr_ind_58_,_res_reg_36_,0
	addi	$15, $16, 4
# was:	addi	_arr_reg_59_, _letBind_12_, 4
	lw	$18, 0($16)
# was:	lw	_size_reg_60_, 0(_letBind_12_)
	bgez	$17, _safe_lab_63_
# was:	bgez	_arr_ind_58_, _safe_lab_63_
_error_lab_62_:
	ori	$5, $0, 11
# was:	ori	5, 0, 11
	j	_IllegalArrSizeError_
_safe_lab_63_:
	sub	$18, $17, $18
# was:	sub	_tmp_reg_61_, _arr_ind_58_, _size_reg_60_
	bgez	$18, _error_lab_62_
# was:	bgez	_tmp_reg_61_, _error_lab_62_
	sll	$17, $17, 2
# was:	sll	_arr_ind_58_, _arr_ind_58_, 2
	add	$15, $15, $17
# was:	add	_arr_reg_59_, _arr_reg_59_, _arr_ind_58_
	lw	$17, 0($15)
# was:	lw	_fun_arg_res_50_, 0(_arr_reg_59_)
	j	_endif_53_
_else_52_:
	ori	$15, $17, 0
# was:	ori	_arr_ind_66_, _res_reg_36_, 0
	addi	$18, $16, 4
# was:	addi	_arr_reg_67_, _letBind_12_, 4
	lw	$19, 0($16)
# was:	lw	_size_reg_68_, 0(_letBind_12_)
	bgez	$15, _safe_lab_71_
# was:	bgez	_arr_ind_66_, _safe_lab_71_
_error_lab_70_:
	ori	$5, $0, 13
# was:	ori	5, 0, 13
	j	_IllegalArrSizeError_
_safe_lab_71_:
	sub	$19, $15, $19
# was:	sub	_tmp_reg_69_, _arr_ind_66_, _size_reg_68_
	bgez	$19, _error_lab_70_
# was:	bgez	_tmp_reg_69_, _error_lab_70_
	sll	$15, $15, 2
# was:	sll	_arr_ind_66_, _arr_ind_66_, 2
	add	$18, $18, $15
# was:	add	_arr_reg_67_, _arr_reg_67_, _arr_ind_66_
	lw	$15, 0($18)
# was:	lw	_minus_L_64_, 0(_arr_reg_67_)
	ori	$18, $17, 0
# was:	ori	_minus_L_73_, _res_reg_36_, 0
	ori	$17, $0, 1
# was:	ori	_minus_R_74_, 0, 1
	sub	$17, $18, $17
# was:	sub	_arr_ind_72_, _minus_L_73_, _minus_R_74_
	addi	$18, $16, 4
# was:	addi	_arr_reg_75_, _letBind_12_, 4
	lw	$19, 0($16)
# was:	lw	_size_reg_76_, 0(_letBind_12_)
	bgez	$17, _safe_lab_79_
# was:	bgez	_arr_ind_72_, _safe_lab_79_
_error_lab_78_:
	ori	$5, $0, 13
# was:	ori	5, 0, 13
	j	_IllegalArrSizeError_
_safe_lab_79_:
	sub	$19, $17, $19
# was:	sub	_tmp_reg_77_, _arr_ind_72_, _size_reg_76_
	bgez	$19, _error_lab_78_
# was:	bgez	_tmp_reg_77_, _error_lab_78_
	sll	$17, $17, 2
# was:	sll	_arr_ind_72_, _arr_ind_72_, 2
	add	$18, $18, $17
# was:	add	_arr_reg_75_, _arr_reg_75_, _arr_ind_72_
	lw	$17, 0($18)
# was:	lw	_minus_R_65_, 0(_arr_reg_75_)
	sub	$17, $15, $17
# was:	sub	_fun_arg_res_50_, _minus_L_64_, _minus_R_65_
_endif_53_:
# 	ori	_res_reg_36_,_fun_arg_res_50_,0
	addi	$14, $14, 4
# was:	addi	_elem_reg_35_, _elem_reg_35_, 4
	sw	$17, 0($12)
# was:	sw	_res_reg_36_, 0(_addr_reg_45_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_45_, _addr_reg_45_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_46_, _i_reg_46_, 1
	j	_loop_beg_47_
_loop_end_48_:
	ori	$11, $10, 0
# was:	ori	_arr_reg_82_, _letBind_32_, 0
	lw	$10, 0($11)
# was:	lw	_size_reg_83_, 0(_arr_reg_82_)
	ori	$16, $0, 0
# was:	ori	_letBind_81_, 0, 0
	addi	$11, $11, 4
# was:	addi	_arr_reg_82_, _arr_reg_82_, 4
	ori	$12, $0, 0
# was:	ori	_ind_var_84_, 0, 0
_loop_beg_86_:
	sub	$13, $12, $10
# was:	sub	_tmp_reg_85_, _ind_var_84_, _size_reg_83_
	bgez	$13, _loop_end_87_
# was:	bgez	_tmp_reg_85_, _loop_end_87_
	lw	$13, 0($11)
# was:	lw	_tmp_reg_85_, 0(_arr_reg_82_)
	addi	$11, $11, 4
# was:	addi	_arr_reg_82_, _arr_reg_82_, 4
# 	ori	_plus_L_89_,_letBind_81_,0
# 	ori	_plus_R_90_,_tmp_reg_85_,0
	add	$16, $16, $13
# was:	add	_fun_arg_res_88_, _plus_L_89_, _plus_R_90_
# 	ori	_letBind_81_,_fun_arg_res_88_,0
	addi	$12, $12, 1
# was:	addi	_ind_var_84_, _ind_var_84_, 1
	j	_loop_beg_86_
_loop_end_87_:
	la	$2, ___str___93_
# was:	la	_tmp_92_, ___str___93_
# ___str___93_: string ""
# 	ori	_letBind_91_,_tmp_92_,0
# 	ori	2,_tmp_92_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_tmp_94_,_letBind_81_,0
# 	ori	_mainres_1_,_tmp_94_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	jal	putint
# was:	jal	putint, 2
_endif_5_:
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	addi	$29, $29, 32
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function read_fun
read_fun:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_95_,2,0
	jal	getint
# was:	jal	getint, 2
# 	ori	_read_funres_96_,2,0
# 	ori	2,_read_funres_96_,0
	addi	$29, $29, 8
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
___str___93_:
	.space	4
	.asciiz	""
	.align	2
_Incorre_11_:
	.space	4
	.asciiz	"Incorrect Input!"
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