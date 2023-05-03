programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		cadeia candidato1 = "***** THAIS"
		cadeia candidato2 = "*****MAYARA"
		cadeia candidato3 = "*****DAYANA"
		inteiro voto
		inteiro contagemC1 = 0
		inteiro contagemC2 = 0
		inteiro contagemC3 = 0
		inteiro contagem_branco = 0
		inteiro contagem_nulo = 0
		
	
		escreva("\nELEIÇOES 2023\n\n\nDigite o número do seu candidato: ")
		leia(voto)
	
		enquanto(voto != 0){
			escolha(voto){
				
				caso 1:
				contagemC1++
				escreva("Você votou no candidato " , candidato1 , "\n")
				pare
				
				caso 2:
				contagemC2++
				escreva("Você votou no candidato " , candidato2 , "\n")
				pare
				
				caso 3:
				contagemC3++
				escreva("Você votou no candidato " , candidato3 , "\n")
				pare
		
				caso 5:
				contagem_branco++
				escreva("Você votou BRANCO \n" )
				pare
		
				caso 8:
				contagem_nulo++
				escreva("Você votou NULO \n")
				pare

				caso contrario:
				escreva("	\n*VOTO INVÁLIDO*, vote novamente ")
				pare
			}
			escreva(" \nvote no seu candidato: ")
			leia(voto)

	
		}
		escreva("#A ELEIÇÃO FOI ENCERRADA#. Iniciando contagem de votos...\n\n\n")

		real soma = contagemC1 + contagemC2 + contagemC3 + contagem_branco + contagem_nulo
		real porcentagemC1 
		real porcentagemC2
		real porcentagemC3
		real porcentagem_branco
		real porcentagem_nulo

		porcentagemC1 = (contagemC1/soma) * 100
		porcentagemC2 = (contagemC2/soma) * 100
		porcentagemC3 = (contagemC3/soma) * 100
		porcentagem_branco = (contagem_branco/soma) * 100
		porcentagem_nulo = (contagem_nulo/soma) * 100
		
		
		se(contagemC1 > contagemC2 e contagemC1 > contagemC3){
			escreva("Candidata THAIS venceu a eleição\n")
		}
		senao se(contagemC2 > contagemC3 e contagemC2 > contagemC1){
			escreva("Candidata MAYARA venceu a eleição\n")
		}
		senao se(contagemC3 > contagemC1 e contagemC3 > contagemC2){
			escreva("Candidata DAYANA venceu a eleição\n")
		}
		senao se(contagemC1 == contagemC2 e contagemC2 >= contagemC1){
			escreva("Empate entre TODOS os candidatos -------2º Turno\n\n")
		}
		senao se(contagemC2 == contagemC3 e contagemC1 < contagemC2){
			escreva("\nEMPATE entre as candidatas MAYARA e DAYANA-------> 2ºTurno\n\n")
			
		}
		senao se(contagemC1 == contagemC3 e contagemC2 < contagemC3){
			escreva("EMPATE entre as candidatas THAIS e DAYANA ---------> 2ºTurno")
		}
		senao se(contagemC1 == contagemC2 e contagemC3 < contagemC2 e contagemC3< contagemC1){
			escreva("EMAPTE entre as candidatas THAIS e MAYARA ---------> 2ºTurno\n\n")
		}
	}
}
