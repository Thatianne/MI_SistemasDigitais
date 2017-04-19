.data
	
	vetor: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.text
	
		addi r8, r0, 15					#Quantidade de numeros primos(entrada)
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
			addi r8, r8, -1				#contabiliza mais um numero primo na quantidade informada
			addi r12, r12, 4			#incrementa a posicao da memoria para um possivel numero primo
		
		ENDVERIFY:
			beq r8, r0, END				#se for o ultimo valor a ser verificado, encerra o programa
			addi r9, r9, 1				#se nao for, incrementa o dividendo
			
			#reseta valores
			mov r10, r9
			mov r13, r0
			
			br LOOP
				
		END:
			#fim
.end
