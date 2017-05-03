.data
	
    vetor: .skip 256
	
	.equ UART0, 0x860
	erro: .asciz "Entrada Inválida!!"
	.global main

.text

main: 
		movia r12, vetor


	n1:   	movia r15, UART0	#move o endereço da UART0
       		call nr_uart_rxchar	#chamada da macro de leitura
       	        blt r2, r0, n1		#volta para n1 caso nada digitado(r2 = -1)
        
       		mov r6, r2  		#guarda o primeiro digito
        	subi r6, r6, 0x30	#subtrai 48(transforma no equivalente decimal)
        	
        	movi r10 ,0x09
        	bgt r6, r10, ERROR      # 20, 2E

	n2:   	movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, n2		#volta para n2 caso nada digitado(r2 = -1)
		
		mov r7, r2		#guarda o primeiro digito
		subi r7, r7, 0x30	#subtrai 48(transforma no equivalente decimal)
          	
          	movi r10 ,0x09
        	bgt r7, r10, ERROR
	
	join:	 			#Executa a junçao dos digitos, atraves de multiplicaçao e soma
         	muli r6, r6, 10
         	add r13, r6, r7
         
        action: movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, action	#volta para action caso nada digitado(r2 = -1)
		
		movi r10 ,0x20
        	beq r2, r10, aloca 
        	movi r10 ,0x2E
        	beq r2, r10, aloca
          	
          	movi r10 ,0x09
        	bgt r2, r10, ERROR
         	
        aloca:
        	stw r13, 0(r12)		#######Armazena o resultado da função de fibonacci(fib(i)) no vetor
		addi r12, r12, 4
		addi r16, r16, 1
		movi r10 ,0x20
        	beq r2, r10, n1

	begin:
		mov r8, r16			          #Tamanho do vetor
		mov r9, r0			          #Indice do loop externo	
		mov r10, r0			          #Indice do loop interno
		addi r11, r8, -2	          	  #quantidade de comparações
		
		LoopExterno:
		
			movia r12, vetor 	          #recebe a primeira posição do vetor
			
		LoopInterno:
			ldw r13, 0(r12) 	          #pega o elemento atual
			ldw r14, 4(r12) 	          #pega o elemento atual+1
		
			cmplt r15, r14, r13 	          #verifica se menor(atual+1 < atual)	
			beq r15, r0, NaoTroca	          #se igual a 0, nao troca	
				
			#troca
			stw r13, 4(r12) 
			stw r14, 0(r12)
				
		NaoTroca:
			cmplt r15, r10, r11		  #verifica se menor(loop interno < quantidade de comparaçoes)
			beq r15, r0, SaiLoopInterno	  #se igual a 0, sai do loop interno
			addi r10, r10, 1		  #incrementa o indice do loop interno
			addi r12, r12, 4		  #incrementa a posição do vetor
			
			br LoopInterno
				
		SaiLoopInterno:
			mov r10, r0			  #reseta o indice doloop interno	
			
			addi r9, r9, 1			  #incrementa o loop externo
			cmplt r15, r9, r8		  #verifica se menor(loop externo < tamnho do vetor)
			bne r15, r0, LoopExterno	  #se diferente de 0, retoma recomeça o loop externo
			beq r15, r0, ENDWRITE
			
	     ERROR:
			movia r4, erro		##
			movia r15, UART0	# printf
			call nr_uart_txstring	##
			
	     ENDWRITE:	
	     		movia r12, vetor
	     		
	     	loop:	
	     		ldw r2, 0(r12)
	     		mov r4, r2			#armazena o valor em r4 para ser escrito
	
			movia r5, UART0
			call nr_uart_txhex		#chamada da macro de escrita
			
			addi r12, r12, 4
			addi r17, r17, 1
			beq r17, r16, END
			
			addi r20, r13, 1
			movi r4, 0x2C			#armazena o hexadecimal correspondente a virgula
			movia r5, UART0
			call nr_uart_txchar		#chamada da macro de escrita(no caso para a virgula)
			br loop
			
	     END:
.end
