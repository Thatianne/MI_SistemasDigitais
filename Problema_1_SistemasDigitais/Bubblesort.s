.data
	
    vetor: .word 10, 5, 3, 2, 58, 43, 102, 15

.text
		addi r8, r0, 8 			          #Tamanho do vetor
		mov r9, r0			              #Indice do loop externo	
		mov r10, r0			              #Indice do loop interno
		addi r11, r8, -2	          	#quantidade de comparações
		
		LoopExterno:
		
			movia r12, vetor 	          #recebe a primeira posição do vetor
			
		LoopInterno:
			ldw r13, 0(r12) 	          #pega o elemento atual
			ldw r14, 4(r12) 	          #pega o elemento atual+1
		
			cmplt r15, r14, r13 	      #verifica se menor(atual+1 < atual)	
			beq r15, r0, NaoTroca	      #se igual a 0, nao troca	
				
			#troca
			stw r13, 4(r12) 
			stw r14, 0(r12)
				
		NaoTroca:
			cmplt r15, r10, r11		      #verifica se menor(loop interno < quantidade de comparaçoes)
			beq r15, r0, SaiLoopInterno	#se igual a 0, sai do loop interno
			addi r10, r10, 1		        #incrementa o indice do loop interno
			addi r12, r12, 4		        #incrementa a posição do vetor
			
			br LoopInterno
				
		SaiLoopInterno:
			mov r10, r0			            #reseta o indice doloop interno	
			
			addi r9, r9, 1			        #incrementa o loop externo
			cmplt r15, r9, r8		        #verifica se menor(loop externo < tamnho do vetor)
			bne r15, r0, LoopExterno	  #se diferente de 0, retoma recomeça o loop externo
