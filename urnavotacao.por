programa
{
	
	funcao inicio()
	{
		cadeia candidato1 = "***** THAIS"
		cadeia candidato2 = "*****MAYARA"
		cadeia candidato3 = "*****DAYANA"
		inteiro voto
	
		escreva("\nELEIÇOES 2023\n\n\nDigite o número do seu candidato: ")
		leia(voto)
	
		enquanto(voto != 0){
			escolha(voto){
				
				caso 1:
				escreva("Você votou no candidato " , candidato1 , "\n")
				pare
				
				caso 2:
				escreva("Você votou no candidato " , candidato2 , "\n")
				pare
				
				caso 3:
				escreva("Você votou no candidato " , candidato3 , "\n")
				pare
		
				caso 5:
				escreva("Você votou BRANCO \n" )
				pare
		
				caso 8:
				escreva("Você votou NULO \n")
				pare

				caso contrario:
				escreva("	\nvoto inválido, vote novamente ")
				pare
			}
			escreva(" \nvote no seu candidato: ")
			leia(voto)

			inteiro contagem_c1 = 0
			inteiro contagem_c2 = 0
			inteiro contagem_c3 = 0
			inteiro contagem_branco

							
			
		}
		
	}
}
