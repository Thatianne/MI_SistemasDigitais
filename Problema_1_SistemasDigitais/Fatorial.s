.text

		      addi r4, r0, 5
		      call fact
		      add r9, r2, r0
		      br END

	fact:
      		subi sp, sp, 8   	# Ajusta a pilha para 2 items
      		stw ra, 4(sp)   	# Guarda endereço de retorno
      		stw r4, 0(sp)  	 	# Guarda argumento n

      		cmplti r8, r4, 1  # testa se n < 1
     		  beq r8, r0, L1   	# Se n >= 1, chamada L1

		      addi r2, r0, 1    # Se n < 1, retorna 1
     	  	addi sp, sp, 8  	# libera 2 posiçoes da pilha
     		  ret   	  		    # retorna

	L1:   
		      subi r4, r4, 1   	# nova chamada: novo argumento (n - 1)
     	  	call fact      		# call fact com (n - 1)

        	 # Ponto de retorno da chamada recursiva:
         
      		ldw r4, 0(sp)  	 	# Recupera o argumento passado
    	  	ldw ra, 4(sp)  	 	# Recupera o endereço de retorno
     		  addi sp, sp, 8  	# Libera 2 posiçoes da pilha

     		  mul r2, r4, r2  	# Calcula n * fact (n - 1)
     		  ret           	 	# Retorna com o resultado
      
	END:

.end
