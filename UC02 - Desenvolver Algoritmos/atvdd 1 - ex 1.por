programa {
	funcao inicio() {
	     inteiro qntdGarcons
		real hrsEvento
		real vlrHora = 10.5
		
		escreva("Digite a quantidade de garçons: ")
		leia(qntdGarcons)
		
		escreva("\nDigite a quantidade de horas do evento: ")
		leia(hrsEvento)
		
		real custo = qntdGarcons * hrsEvento * vlrHora
		
		escreva("\nO custo total do evento será: R$", custo)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */