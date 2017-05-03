.data

 		aux: .skip 256
 
       		 	.equ UART0, 0x860
    			
			erro: .asciz "Entrada Inválida!!"
    			
        		.global main
        		.text

main: 

	n1:   	movia r15, UART0	#move o endereço da UART0
       		call nr_uart_rxchar	#chamada da macro de leitura
       	        blt r2, r0, n1		#volta para n1 caso nada digitado(r2 = -1)
        
       		mov r6, r2  		#guarda o primeiro digito
        	subi r6, r6, 0x30	#subtrai 48(transforma no equivalente decimal)
        
	n2:   	movia r15, UART0
        	call nr_uart_rxchar
            	blt r2, r0, n2		#volta para n2 caso nada digitado(r2 = -1)
		
		mov r7, r2		#guarda o primeiro digito
		subi r7, r7, 0x30	#subtrai 48(transforma no equivalente decimal)
          
	
	join:	 			#Executa a junçao dos digitos, atraves de multiplicaçao e soma
         	muli r6, r6, 10
         	add r13, r6, r7
 
		movia r12, aux	#move o endereço do vetor
		addi r12, r12, 256
		movi r10 , 0	#inicia o indice do loop r10=0
	
	LOOP:
		bgt r10, r13, END	#condiçao do loop, termina quando o indice for maior que o valor digitado(r10<r13)
		mov r4, r10		#guarda o valor para o fibonacci atual(fib(i) ou fib(r10))
	
		call fib		#chama a função de fibonaccci( fib(i) )
		addi r10, r10, 1	#incrementa o indice do loop	
	
	WRITE:	
		mov r4, r2			#armazena o valor em r4 para ser escrito
	
		movia r5, UART0
		call nr_uart_txhex		#chamada da macro de escrita
		
		addi r20, r13, 1
		beq r10, r20, LOOP		#se r10(indice) for igual a r13(valor digitado)+1, salta para encerrar o loop
		movi r4, 0x2C			#armazena o hexadecimal correspondente a virgula
	
		movia r5, UART0
		call nr_uart_txchar		#chamada da macro de escrita(no caso para a virgula)
	
		br LOOP				#salta para reinicio do loop			
	
	
	fib:					#funçao de fibonacci
		cmpgti r8, r4, 1		#compara se o valor de "n" da chamada de fibonacci(fib(n)) eh maior que 1
		bne r8, r0, fibrec		#se  n> 1, salta para fibrec
		mov r2, r4			#se 0<= n <=1, fib(n) = n
		ret				# retorna para o endereço de retorno atual
	
	fibrec:
		subi sp, sp, 4			# Ajusta a pilha para 3 items
		subi r12, r12, 8
		stw ra, 0(sp)			# Guarda endereço de retorno
		stw r4, 0(r12)			# Guarda argumento n
		
		subi r4, r4, 1			#n-1
		call fib			#chama a funçao, fib(n-1)
		
		ldw r4, 0(r12)			# Recupera o argumento passado
		stw r2, 4(r12)			#guarda o resultado de fib(n-1)
		
		subi r4, r4, 2			#n-2
		call fib			#chama a funçao, fib(n-2)
		
		ldw r9, 4(r12)			#recupera o valor de fib(n-1)
		add r2, r9, r2			#calcula fib(n-1) + fib(n-2)	
		
		ldw ra, 0(sp)			# Recupera o endereço de retorno
		addi sp, sp, 4
		addi r12, r12, 8		# Libera 3 posiçoes da pilha
		ret				# retorna para o endereço de retorno atual
	
	ERROR:
		movia r4, erro		##
		movia r15, UART0	# printf
		call nr_uart_txstring	##
		
	
	END:
.end
