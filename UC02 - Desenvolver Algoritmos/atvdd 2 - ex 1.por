programa
{
	
	funcao inicio()
	{
		inteiro diaria = 0
		inteiro qntdDias = 0
		
		faca 
		{
			escreva("Digite o valor da diária: R$")
			leia(diaria)

			escreva("Digite a quantidade de dias: ")
			leia(qntdDias)

			se (qntdDias < 0 ou qntdDias > 30 ou diaria < 0) {
				escreva("Valor inválido \n")
			}
		} 
		enquanto (qntdDias < 0 ou qntdDias > 30 ou diaria < 0)

		escreva("Fim do programa!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */