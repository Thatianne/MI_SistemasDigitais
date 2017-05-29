.text

main: 

		addi $s0, $zero, 3	#guarda o valor a ser calculado
		jal fact		#chama a função para calculo do fatorial
		
		add $s2, $v0, $zero	#armazena o valor final em $s2
		
		j END

	fact:
      		subi $sp, $sp, 8   	# Ajusta a pilha para 2 items
      		sw $ra, 4($sp)   	# Guarda endereço de retorno
      		sw $s0, 0($sp)  	# Guarda argumento n

      		slti $t0, $s0, 1        # testa se n < 1
     		beq $t0, $zero, L1   	# Se n >= 1, chamada L1

		addi $v0, $zero, 1         # Se n < 1, retorna 1
     	  	addi $sp, $sp, 8  	# libera 2 posiçoes da pilha
     		jr $ra  	  		# retorna

	L1:   
		subi $s0, $s0, 1  	# nova chamada: novo argumento (n - 1)
     	  	jal fact      		# call fact com (n - 1)

        	 # Ponto de retorno da chamada recursiva:
         
      		lw $s0, 0($sp)  	# Recupera o argumento passado
    	  	lw $ra, 4($sp)  	# Recupera o endereço de retorno
     		addi $sp, $sp, 8  	# Libera 2 posiçoes da pilha

     		mul $v0, $s0, $v0  	# Calcula n * fact (n - 1)
     		jr $ra           	# Retorna com o resultado
     	END:
   