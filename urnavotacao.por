programa
{
	
	funcao inicio(){
		
		inteiro numeroCandidato
		cadeia Bolsonaro="bolonoro"
		escreva(Bolsonaro)
		escreva("           Digite o numero do candidato: ")
		leia(numeroCandidato)
		
		escolha(numeroCandidato) {
				
				
				caso 1:
					escreva("Candidato 1 recebeu um voto")
					pare
				
				caso 2:
					escreva("Candidato 2 recebeu um voto")
					pare
				
				caso 3:
					escreva("Candidato 3 recebeu um voto")
					pare
				
				caso 5:
					escreva("Voto em branco")
					pare

				caso 8:
					escreva("Voto nulo")
					pare

				caso 0:
					escreva("Encerrar a votação")
					pare
				

				caso contrario:
					escreva("Nenhum candidato foi votado. Escolha um candidato válido")
		}
	}
}
