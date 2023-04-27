programa
{
	
	funcao inicio(){
		inteiro candidato1=0, candidato2=0, candidato3=0
		inteiro numeroCandidato
		inteiro votoBranco=0
		inteiro votoNulo=0
		inteiro encerraVotacao
		inteiro percentualVotos
		escreva("Digite o numero do candidato: ")
		leia(numeroCandidato)
		
		escolha(numeroCandidato) {
				
				
				caso 1:
				candidato1++
					escreva("candidato 1 recebeu um voto")
					pare
				
				caso 2:
					escreva("candidato 2 recebeu um voto")
					pare
				
				caso 3:
					escreva("candidato 3 recebeu um voto")
					pare
				
				caso 6:
					escreva("voto em branco")
					pare

				caso 9:
					escreva("voto nulo")
					pare

				caso 0:
					escreva("Encerrar a votação")
					pare
				

				caso contrario:
					escreva("nenhum candidato foi votado")

					
			
						}
					
					
			}
			
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 818; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */