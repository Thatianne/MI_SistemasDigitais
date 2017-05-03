.data
		.equ UART0, 0x860
		.global main
	
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
         	add r13, r6, r7

		#addi r4, r0, 5
		mov r4, r13		#guarda o valor a ser calculado
		call fact		#chama a função para calculo do fatorial
		add r9, r2, r0

		mov r4, r2			#armazena o valor em r4 para ser escrito
		movia r5, UART0
		call nr_uart_txhex		#chamada da macro de escrita
		
		br END

	fact:
      		subi sp, sp, 8   	# Ajusta a pilha para 2 items
      		stw ra, 4(sp)   	# Guarda endereço de retorno
      		stw r4, 0(sp)  	 	# Guarda argumento n

      		cmplti r8, r4, 1        # testa se n < 1
     		beq r8, r0, L1   	# Se n >= 1, chamada L1

		addi r2, r0, 1          # Se n < 1, retorna 1
     	  	addi sp, sp, 8  	# libera 2 posiçoes da pilha
     		ret   	  		# retorna

	L1:   
		subi r4, r4, 1   	# nova chamada: novo argumento (n - 1)
     	  	call fact      		# call fact com (n - 1)

        	 # Ponto de retorno da chamada recursiva:
         
      		ldw r4, 0(sp)  	 	# Recupera o argumento passado
    	  	ldw ra, 4(sp)  	 	# Recupera o endereço de retorno
     		addi sp, sp, 8  	# Libera 2 posiçoes da pilha

     		mul r2, r4, r2  	# Calcula n * fact (n - 1)
     		ret           	 	# Retorna com o resultado
      
	ERROR:
		movia r4, erro		##
		movia r15, UART0	# printf
		call nr_uart_txstring	##
		

	END:

.end
