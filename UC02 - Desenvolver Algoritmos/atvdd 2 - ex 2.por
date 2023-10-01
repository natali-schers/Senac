programa
{
	
	funcao inicio()
	{
		inteiro qntdHospedes
		inteiro nmrQuarto
		real vlrDiaria = 0.0
		real vlrTotal = 0.0
		real maiorDiaria = 0.0
		real menorDiaria = 0.0

		escreva("Digite a quantidade de hóspedes: ")
		leia(qntdHospedes)

		para(inteiro i = 1; i <= qntdHospedes; i++)
		{
			escreva("Digite o número do quarto: ")
			leia(nmrQuarto)

			escreva("Digite o valor da diária: R$")
			leia(vlrDiaria)

			escreva("Quarto ", nmrQuarto, ": R$", vlrDiaria, "\n")

			se(i == 1) {
				maiorDiaria = vlrDiaria
		          menorDiaria = vlrDiaria
			} senao {
				se(vlrDiaria > maiorDiaria) {
					maiorDiaria = vlrDiaria
				} senao se (vlrDiaria < menorDiaria){
					menorDiaria = vlrDiaria
				}
			}

			vlrTotal = vlrTotal + vlrDiaria
		}

		escreva("Total de diárias: ", qntdHospedes, ". Valor total das diárias: R$", vlrTotal)
		escreva("\nA diária mais barata foi: R$", menorDiaria, ". A diária mais cara foi: R$", maiorDiaria)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 752; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */