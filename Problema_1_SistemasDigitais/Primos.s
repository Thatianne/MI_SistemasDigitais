.data
	
	vetor: .skip 256
	
	.equ UART0, 0x860
	erro: .asciz "Entrada Inválida!!"

.text
	
main: 
	n1:   	movia r15, UART0	#move o endereço da UART0
       		call nr_uart_rxchar	#chamada da macro de leitura
       	        blt r2, r0, n1		#volta para n1 caso nada digitado(r2 = -1)
        
       		mov r6, r2  		#guarda o primeiro digito
        	subi r6, r6, 0x30	#subtrai 48(transforma no equivalente decimal)

		movi r10 ,0x09
        	bgt r6, r10, ERROR
        
	n2:   	movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, n2		#volta para n2 caso nada digitado(r2 = -1)
		
		mov r7, r2		#guarda o primeiro digito
		subi r7, r7, 0x30	#subtrai 48(transforma no equivalente decimal)

		movi r10 ,0x09
        	bgt r6, r10, ERROR
          
	
	join:	 			#Executa a junçao dos digitos, atraves de multiplicaçao e soma
         	muli r6, r6, 10
         	add r16, r6, r7


		#addi r8, r0, 15				#Quantidade de numeros primos(entrada)
		mov r8, r16
		addi r9, r0, 2					#numero inicial
		mov r10, r9					#divisor
		addi r11, r0, 2					#condiçao para ser primo(apenas duas divisoes com resto 0)
		movia r12, vetor				#pega a posiçao do vetor para armazenar os numeros primos
				
		LOOP:
			div r14, r9, r10			#numero(atual)/divisor 
			
			#pega o resto
			mul r15, r14, r10
			sub r15, r9, r15	
					
			bne r15, r0, CONTINUE			#se o resto for diferente de zero, nao e primo
			addi r13, r13, 1			#se for, incrementa o valor de divisoes certas
			
		CONTINUE:	
			addi r10, r10, -1			#decrementa o divisor
			beq r0, r10, VERIFY			#se divisor for igual a 0
			br LOOP					#se nao for, realizara mais uma divisao
			
		VERIFY:
			bne r11, r13, ENDVERIFY			#se nao houver apenas 2 divisoes corretas, nao e primo
			stw r9, 0(r12)				#se for, armazena na memoria
			
			mov r4, r9				#armazena o valor em r4 para ser escrito
			movia r5, UART0
			call nr_uart_txhex			#chamada da macro de escrita

			addi r8, r8, -1				#contabiliza mais um numero primo na quantidade informada
			addi r12, r12, 4			#incrementa a posicao da memoria para um possivel numero primo
			
			beq r8, r0, ENDVERIFY
			movi r4, 0x2C				#armazena o hexadecimal correspondente a virgula
			movia r5, UART0
			call nr_uart_txchar			#chamada da macro de escrita(no caso para a virgula)
			
		ENDVERIFY:
			beq r8, r0, END				#se for o ultimo valor a ser verificado, encerra o programa
			addi r9, r9, 1				#se nao for, incrementa o dividendo
			
			#reseta valores
			mov r10, r9
			mov r13, r0
			
			br LOOP
			
		ERROR:
			movia r4, erro		##
			movia r15, UART0	# printf
			call nr_uart_txstring	##
				
		END:
			#fim
.end
