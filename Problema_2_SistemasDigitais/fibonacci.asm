.data
	aux:.space 40
 		
.text

main: 
         	addi $s0, $zero, 6
 
		la $t2, aux		#move o endereço da memoria
		addi $t2, $t2, 40	
		
		move $s1 , $zero	#inicia o indice do loop $s1=0
	
	LOOP:
		bgt $s1, $s0, END	#condiçao do loop, termina quando o indice for maior que o valor digitado($s1<$s0)
		move $s2, $s1		#guarda o valor para o fibonacci atual(fib(i) ou fib($s1))
	
		jal fib		#chama a função de fibonaccci( fib(i) )
		addi $s1, $s1, 1	#incrementa o indice do loop	
	
	WRITE:	
		move $s5, $v0			#armazena o valor final em $s5
		
		j LOOP				#salta para reinicio do loop			
	
	
	fib:					#funçao de fibonacci
		sgt $t0, $s2, 1			#compara se o valor de "n" da chamada de fibonacci(fib(n)) eh maior que 1
		bne $t0, $zero, fibrec		#se  n> 1, salta para fibrec
		move $v0, $s2			#se 0<= n <=1, fib(n) = n
		jr $ra				# retorna para o endereço de retorno atual
	
	fibrec:
		subi $sp, $sp, 4			# Ajusta a pilha para 3 items
		subi $t2, $t2, 8
		sw $ra, 0($sp)			# Guarda endereço de retorno
		sw $s2, 0($t2)			# Guarda argumento n
		
		subi $s2, $s2, 1			#n-1
		jal fib			#chama a funçao, fib(n-1)
		
		lw $s2, 0($t2)			# Recupera o argumento passado
		sw $v0, 4($t2)			#guarda o resultado de fib(n-1)
		
		subi $s2, $s2, 2			#n-2
		jal fib			#chama a funçao, fib(n-2)
		
		lw $s3, 4($t2)			#recupera o valor de fib(n-1)
		add $v0, $s3, $v0			#calcula fib(n-1) + fib(n-2)	
		
		lw $ra, 0($sp)			# Recupera o endereço de retorno
		addi $sp, $sp, 4
		addi $t2, $t2, 8		
		jr $ra				# retorna para o endereço de retorno atual
	
	END:
.end