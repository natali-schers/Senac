programa
{
	
	funcao inicio()
	{
		real vlrDiaria = 0.0
		real vlrTotal = 0.0
		cadeia nome
		inteiro idade
		caracter continuar = 'S'
		inteiro meia = 0
		inteiro gratuidade = 0 
		
		escreva("Digite o valor da diária: R$")
		leia(vlrDiaria)
	
		enquanto (continuar == 'S') {
			escreva("\nDigite o nome do hóspede: ")
			leia(nome)
	
			escreva("Digite a idade do hóspede: ")
			leia(idade)
				
			se (idade <= 4) {
				vlrTotal = vlrTotal + 0.0
				gratuidade++
				escreva(nome, " possui gratuidade!\n")
			} 
			senao se (idade >= 80) {
				vlrTotal = vlrTotal + vlrDiaria / 2
				meia++
				escreva(nome, " paga meia!\n")
			} senao {
				vlrTotal = vlrTotal + vlrDiaria
			}

			escreva("\nDeseja continuar? (Digite S ou N) ")
			leia(continuar)

			se (continuar == 'N') {
				continuar = 'N'
			}
		}

		escreva("Total de hospedagens: R$", vlrTotal, "; ", gratuidade, " gratuidade(s); ", meia, " meia(s).")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */