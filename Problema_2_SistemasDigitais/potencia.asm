.data
	resultado: 0
.text	
		
		addi $s0, $zero, 10 	#DEFINE A BASE

		addi $s1, $zero, 2 	#DEFINE A EXPOENTE
		addi $s2, $zero, 1 	#contador para laco
		add $s4, $zero, $s0 	#resultado
		la $t0, resultado

	rep: 
		mul $s4, $s4, $s0		#executa as multiplicações
	        addi $s2, $s2, 1		#incrementa o contador
		bne $s2, $s1, rep	

		# se o contador der diferente do expoente guarda o valor na memoria
		
		sw $s4, 0($t0)

	END:
		
.end
