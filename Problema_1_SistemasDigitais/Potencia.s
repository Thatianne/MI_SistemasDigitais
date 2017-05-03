
.data
	resultado: .word 0
	.equ UART0, 0x860
	erro: .asciz "Entrada Inválida!!"

.text
	.global main

	main:	
		
	n1:   	movia r15, UART0	#move o endereço da UART0
       		call nr_uart_rxchar	#chamada da macro de leitura
       	        blt r2, r0, n1		#volta para n1 caso nada digitado(r2 = -1)
        
       		mov r11, r2  		#guarda o primeiro digito
        	subi r11, r11, 0x30	#subtrai 48(transforma no equivalente decimal)
        	
        	movi r10 ,0x09
        	bgt r11, r10, ERROR      

	n2:   	movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, n2		#volta para n2 caso nada digitado(r2 = -1)
		
		mov r18, r2		#guarda o primeiro digito
		subi r18, r18, 0x30	#subtrai 48(transforma no equivalente decimal)
          	
          	movi r10 ,0x09
        	bgt r18, r10, ERROR
	
	join:	 			#Executa a junçao dos digitos, atraves de multiplicaçao e soma
         	muli r11, r11, 10
         	add r13, r11, r18

	n3:   	movia r15, UART0	#move o endereço da UART0
       		call nr_uart_rxchar	#chamada da macro de leitura
       	        blt r2, r0, n3		#volta para n1 caso nada digitado(r2 = -1)
        
       		mov r16, r2  		#guarda o primeiro digito
        	subi r16, r16, 0x30	#subtrai 48(transforma no equivalente decimal)
        	
        	movi r10 ,0x09
        	bgt r16, r10, ERROR      

	n4:   	movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, n4		#volta para n2 caso nada digitado(r2 = -1)
		
		mov r17, r2		#guarda o primeiro digito
		subi r17, r17, 0x30	#subtrai 48(transforma no equivalente decimal)
          	
          	movi r10 ,0x09
        	bgt r17, r10, ERROR
	
	join:	 			#Executa a junçao dos digitos, atraves de multiplicaçao e soma
         	muli r16, r16, 10
         	add r14, r16, r17
         	

		addi r9, r0, 1 #contador para laco
		add r8, r0, r13 #resultado

		rep: mul r8, r8, r13
			 addi r9, r9, 1
		bne r9, r14, rep

		# se o contador der diferente do expoente guarda o valor na memoria
		movia r12, resultado
		stw r8, 0(r12)
		
		mov r4, r8			#armazena o valor em r4 para ser escrito
	
		movia r5, UART0
		call nr_uart_txhex		#chamada da macro de escrita
		
		br END
		
	ERROR:
		movia r4, erro		##
		movia r15, UART0	# printf
		call nr_uart_txstring	##
		
	END:
		
.end