
.data
	resultado: .word 0

.text
	.global main
	main:
	addi r4, r0, 3 #base
	addi r5, r0, 4 #expoente
	addi r7, r0, 1 #contador para laco
	add r8, r0, r4 #resultado

	rep: mul r8, r8, r4
		 addi r7, r7, 1
	bne r7, r5, rep

	# se der diferente guarda o valor na memoria
	movia r9, resultado
	stw r8, 0(r9)

