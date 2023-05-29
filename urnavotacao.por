programa
{
	inclua biblioteca Matematica --> mat /* Inclusão da biblioteca matematica para usar a função de arrendondar que não tem disponivel por padrão. */
	inclua biblioteca Sons --> som
	inclua biblioteca Util
	
	funcao inicio()
	{
		/* Declarando e definindo as variáveis */
		cadeia candidato1 = ""
		cadeia candidato2 = ""
		cadeia candidato3 = ""
		inteiro voto
		inteiro contagemC1 = 0
		inteiro contagemC2 = 0
		inteiro contagemC3 = 0
		inteiro contagem_branco = 0
		inteiro contagem_nulo = 0
		logico encerraVotacao = falso
		caracter confirmaEncerramento = 'N'
		caracter escolher = 'S'
				
		
		
		enquanto(escolher != 'N' e escolher != 'n'){
			escreva("\t\t\t\t\t\t\tConfiguração da urna eletrônica \n\n")	
			escreva (">>Digite o nome do candidato 1\n ")
			leia(candidato1)
			escreva(">>Digite o nome do candidato 2 \n")
			leia(candidato2)
			escreva(">>Digite o nome do candidato 3 \n")
			leia(candidato3)
			/* Mensagem de introdução e mensagem de instrução */
			limpa()
			escreva("Você deseja alterar o nome do candidato? S/N  ")
			leia(escolher)
			limpa()
		}
		
		escreva("\n\t\t\t\t\t\t\t\t * ELEIÇOES 2023 *")
		escreva("\n", candidato1  ," Nº : 1\n",candidato2," Nº : 2\n",candidato3," Nº : 3\nNULO Nº : 8\nBRANCO Nº : 5\n")
		escreva("\nDigite o número do seu candidato: ")
		
		leia(voto) /* ler o voto do usuário e armazenar na memória */
		
		/* Executar os passos seguintes até que alguém vote 0 para encerrar a eleição */
		enquanto(nao encerraVotacao){
			/* Associar o voto do usuário a cada candidato e incrementar a contagem de votos do candidato votado */
			escolha(voto){

				caso 841315:
				escreva("Deseja realmente encerrar a votação?\n ")
				escreva("Digite  S para 'sim': ")
				leia(confirmaEncerramento)

				se(confirmaEncerramento == 's' ou confirmaEncerramento == 'S'){
					encerraVotacao = verdadeiro
				}	
				pare
				
				caso 1:
				contagemC1++
				escreva("Você votou no candidato " , candidato1 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				pare
				
				caso 2:
				contagemC2++
				escreva("Você votou no candidato " , candidato2 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				pare
				
				caso 3:
				contagemC3++
				escreva("Você votou no candidato " , candidato3 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				pare
		
				caso 5:
				contagem_branco++
				escreva("Você votou BRANCO \n" ) /* Mensagem de confirmação do voto */
				somConfirmacao()
				pare
		
				caso 8:
				contagem_nulo++
				escreva("Você votou NULO \n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				pare

				caso contrario:
				escreva("	\n*VOTO INVÁLIDO*, vote novamente ") /* Mensagem de erro */
				pare

				
			}
			
			se(confirmaEncerramento == 'N' ou confirmaEncerramento == 'n' ){
				escreva(" \nVote no seu candidato: ") /* Mensagem de instrução */
				leia(voto) /* Ler o voto do usuário */
			}
			
		}
	
		escreva("\t\t\t#A ELEIÇÃO FOI ENCERRADA#.\n\n\n")
		
		
	
		/* Declarando e definindo as variáveis e somando o voto de todos os candidatos. Calculando porcentagem dos votos de cada candidato */
		real soma = contagemC1 + contagemC2 + contagemC3 + contagem_branco + contagem_nulo
		real porcentagemC1 = (contagemC1/soma) * 100
		real porcentagemC2 = (contagemC2/soma) * 100
		real porcentagemC3= (contagemC3/soma) * 100
		real porcentagem_branco = (contagem_branco/soma) * 100
		real porcentagem_nulo = (contagem_nulo/soma) * 100

		escreva("O candidato(a) ", candidato1," recebeu ", contagemC1 , " votos, que representam ", mat.arredondar(porcentagemC1 , 2), "% do total de votos.\n")
		escreva("O candidato(a) ", candidato2," recebeu ", contagemC2 , " votos, que representam ", mat.arredondar(porcentagemC2 , 2), "% do total de votos.\n")
		escreva("O candidato(a) ", candidato3," recebeu ", contagemC3 , " votos, que representam ", mat.arredondar(porcentagemC3 , 2), "% do total de votos.\n")
		escreva("\nHouve um total de ", contagem_nulo , " votos NULOS, que representam ", mat.arredondar(porcentagem_nulo , 2), "% do total de votos.\n")
		escreva("Houve um total de ", contagem_branco , " votos BRANCOS, que representam ", mat.arredondar(porcentagem_branco , 2), "% do total de votos.\n\n")
		
		/* Comparando a quantidade de votos dos candidatos para determinar o resultado final e exibí-lo ao usuário */
		se(contagemC1 > contagemC2 e contagemC1 > contagemC3){
			escreva(" >>>Candidato " ,candidato1 ," VENCEU A ELEIÇÃO<<<< " , contagemC1 + contagem_branco, " votos, que representam ", mat.arredondar(porcentagemC1 + porcentagem_branco , 2), "% do total de votos.\n")
		}
		senao se(contagemC2 > contagemC3 e contagemC2 > contagemC1){	
			escreva(" >>>Candidato " ,candidato2, " VENCEU A ELEIÇÃO <<<< " , contagemC2 + contagem_branco, " votos, que representam ", mat.arredondar( porcentagemC2 + porcentagem_branco ,2 ), "% do total de votos.\n") 
			
		}
		senao se(contagemC3 > contagemC1 e contagemC3 > contagemC2){
			escreva(">>>Candidato " ,candidato3, " VENCEU A ELEIÇÃO <<<<1", contagemC3 + contagem_branco, " votos, que representam ", mat.arredondar( porcentagemC3 + porcentagem_branco , 2 ), "% do total de votos.\n")
		}
		senao se(contagemC1 == contagemC2 e contagemC2 == contagemC3){	
			escreva("Empate entre TODOS os candidatos -------2º Turno\n\n")
		}
		senao se(contagemC2 == contagemC3 e contagemC1 < contagemC2){
			escreva("\nEMPATE entre os candidatos", candidato2, "e", candidato3, " ------> 2ºTurno\n\n")
			
		}
		senao se(contagemC1 == contagemC3 e contagemC2 < contagemC3){
			escreva("EMPATE entre os candidatos",candidato1, "e", candidato3, " ---------> 2ºTurno")
		}
		senao se(contagemC1 == contagemC2 e contagemC3 < contagemC2){
			
			escreva("EMPATE entre as candidadto", candidato1, "e", candidato2, "---------> 2ºTurno\n\n")
		}
	}
		
	funcao vazio somConfirmacao(){

		inteiro tempoDeEspera = 2000
		inteiro somDeConfirmacao = som.carregar_som("confirma-urna.mp3")

		som.reproduzir_som(somDeConfirmacao, falso)
		
	

		
	
		}
	
	
	}
	
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1084; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */