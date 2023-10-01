programa
{
	inclua biblioteca Matematica --> m
	cadeia mesas[] = {"Mesa 1", "Mesa 2", "Mesa 3", "Mesa 4"}
	real vlrMesas[] = {0.0, 0.0, 0.0, 0.0}
	inteiro posicao = 0
	
	funcao inicio()
	{
		enquanto(posicao < 4)
		{
			escreva("Valor da ", mesas[posicao], ": R$")
			leia(vlrMesas[posicao])
			escreva(mesas[posicao], ": R$ ", vlrMesas[posicao], "\n")
			posicao += 1
		}

		limpa()
		posicao = 0
		
		enquanto(posicao < 4)
		{
			se(vlrMesas[posicao] > 30.99){
				escreva("\n", mesas[posicao], " precisa pagar R$", m.arredondar(vlrMesas[posicao] - 30.99, 2), " a mais!\n")
				posicao += 1
			}
			senao{
				escreva("\n", mesas[posicao], " não deve pagar nada.\n")
				posicao += 1
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 690; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */