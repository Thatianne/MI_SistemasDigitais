.data

 		vetor: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 
       		 	.equ UART0, 0x860
    	
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
 
		movia r12, vetor	#move o endereço do vetor
		movi r10 , 0		#inicia o indice do loop r10=0
	
	LOOP:
		bgt r10, r13, END	#condiçao do loop, termina quando o indice for maior que o valor digitado(r10<r13)
		mov r4, r10		#guarda o valor para o fibonacci atual(fib(i) ou fib(r10))
	
		call fib		#chama a função de fibonaccci( fib(i) )
		addi r10, r10, 1	#incrementa o indice do loop	
	
		stw r2, 0(r12)		#Armazena o resultado da função de fibonacci(fib(i)) no vetor
		addi r12, r12, 4
		
		cmplei	r15, r2, 0x09		#compara se r2 é menor ou igual a 9
		beq	r15, r0, WRITE2		#se maior, salta para WRITE2(escrita de numeros maiores q 9)
		addi	r2, r2, 0x30		#soma 48 (transforma no equivalente ascii)
		br WRITE			#salta para WRITE(escrita de 0 a 9)

	WRITE2:
		mov r19, r2
	
		addi r18, r0, 10
		div r16, r19, r18		#divide o valor por 10(o resultado representara a dezena)
	
		addi r16, r16, 0x30		#soma 48 (transforma no equivalente ascii)
		mov r4, r16			#armazena o valor em r4 para ser escrito
	
		movia r5, UART0
		call nr_uart_txchar		#chamada da macro de escrita
	
		subi r16, r16, 0x30		#subtrai 48(transforma no equivalente decimal)
	
		mul r17, r16, r18		#multiplica por 10
		sub r2, r19, r17		#subtrai do valor inicial(o resultado representa a unidade)	
	
		addi r2, r2, 0x30		#soma 48 (transforma no equivalente ascii)
		mov r4, r2			#armazena o valor em r4 para ser escrito
	
		movia r5, UART0
		call nr_uart_txchar		#chamada da macro de escrita
	
		addi r20, r13, 1
		beq r10, r20, LOOP		#se r10(indice) for igual a r13(valor digitado)+1, salta para encerrar o loop
		movi r4, 0x2C			#armazena o hexadecimal correspondente a virgula
	
		movia r5, UART0
		call nr_uart_txchar		#chamada da macro de escrita(no caso para a virgula)
	
		br LOOP				#salta para reinicio do loop
	
	WRITE:	mov r4, r2			#armazena o valor em r4 para ser escrito
	
		movia r5, UART0
		call nr_uart_txchar		#chamada da macro de escrita
	
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
		subi sp, sp, 12			# Ajusta a pilha para 3 items
		stw ra, 0(sp)			# Guarda endereço de retorno
		stw r4, 4(sp)			# Guarda argumento n
		
		subi r4, r4, 1			#n-1
		call fib			#chama a funçao, fib(n-1)
		
		ldw r4, 4(sp)			# Recupera o argumento passado
		stw r2, 8(sp)			#guarda o resultado de fib(n-1)
		
		subi r4, r4, 2			#n-2
		call fib			#chama a funçao, fib(n-2)
		
		ldw r9, 8(sp)			#recupera o valor de fib(n-1)
		add r2, r9, r2			#calcula fib(n-1) + fib(n-2)	
		
		ldw ra, 0(sp)			# Recupera o endereço de retorno
		addi sp, sp, 12			# Libera 3 posiçoes da pilha
		ret				# retorna para o endereço de retorno atual
	END:
.end
