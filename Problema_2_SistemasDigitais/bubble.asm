.data
	vetor: 3, 2, 6, 4, 7, 9, 1, 10, 8, 12

.text

		addi $s0, $zero, 10 	#Tamanho do vetor
		add $s2, $s0, $zero

		move $s1, $zero		#Indice do loop externo

		move $s2, $zero		#Indice do loop interno

		addi $s4, $s0, -2	#quantidade de comparações

		

		LoopExterno:

		

				la $s3, vetor 			#recebe a primeira posição do vetor

			

		LoopInterno:

				lw $t3, 0($s3) 			#pega o elemento atual

				lw $t4, 4($s3)			#pega o elemento atual+1

		

				slt $t2, $t4, $t3 		#verifica se menor(atual+1 < atual)

				beq $t2, $zero, NaoTroca 	#se igual a 0, nao troca

				
				#troca

				sw $t3, 4($s3)

				sw $t4, 0($s3)

				

		NaoTroca:

				slt $t2, $s2, $s4 		#verifica se menor(loop interno < quantidade de comparaçoes)

				beq $t2, $zero, SaiLoopInterno  #se igual a 0, sai do loop interno

				addi $s2, $s2, 1 		#incrementa o indice do loop interno

				addi $s3, $s3, 4		#incrementa a posição do vetor

				j LoopInterno

				

		SaiLoopInterno:

				move $s2, $zero  		#reseta o indice doloop interno

			

				addi $s1, $s1, 1		#incrementa o loop externo

				slt $t2, $s1, $s0		#verifica se menor(loop externo < tamnho do vetor)

				bne $t2, $zero, LoopExterno	#se diferente de 0, retoma recomeça o loop externo
		END:
.end
