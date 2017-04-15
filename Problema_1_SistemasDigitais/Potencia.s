
.data
	resultado: .word 0
	.equ UART0, 0x860

.text
	.global main

	main:

		base:
			movia r4, UART0
			call nr_uart_rxchar
			blt r2, r0, base
		mov r6, r2 # r6 tem o valor da base vindo do uart_0

		# limpar uart_0 para nao passar o mesmo valor da base para o expoente
		limp:
			movia r2, UART0
			call nr_uart_rxchar
			blt r2, r0, limp

		exp:
			movia r5, UART0
			call nr_uart_rxchar
			blt r2, r0, exp
		mov r5, r2 # r5 tem o valor do expoente vindo do uart_0


		subi r6, r6, 48
		subi r5, r5, 48

		addi r7, r0, 1 #contador para laco
		add r8, r0, r6 #resultado

		rep: mul r8, r8, r6
			 addi r7, r7, 1
		bne r7, r5, rep

		# se o contador der diferente do expoente guarda o valor na memoria
		movia r9, resultado
		stw r8, 0(r9)

