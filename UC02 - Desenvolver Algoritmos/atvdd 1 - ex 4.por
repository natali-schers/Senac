programa
{
	funcao inicio()
	{
		caracter opcao
		inteiro qntdRoupas
		inteiro idade
		cadeia acompanhado
		logico podeSeguir = falso
		cadeia exames

		escreva("Digite L para lavanderia ou P para Piscina: ")
		leia(opcao)

		escolha(opcao) {
			caso 'L': 
				escreva("Digite quantos KG de roupas serão lavados: ")
				leia(qntdRoupas)

				se(qntdRoupas > 10) {
					inteiro total = qntdRoupas * 15
					escreva("\nO valor da lavagem foi R$", total)
				} senao se (qntdRoupas <= 10) {
					inteiro total = qntdRoupas * 20
					escreva("\nO valor da lavagem foi R$", total)
				}
			pare
			caso 'P':
				escreva("Digite sua idade: ")
				leia(idade)

				se(idade < 18) {
					escreva("Você está acompanhado por um responsável maior de idade? Digite S para sim e N para não: ")
					leia(acompanhado)

					se(acompanhado == "S") {
						podeSeguir = verdadeiro
					} senao se(acompanhado == "N") {
						escreva("\nProvidencie um acompanhante maior de idade!")
					}
				}
		
				se (idade >= 18 ou idade < 18 e podeSeguir == verdadeiro) {
					escreva("Seus exames estão em dia? Digite S para sim e N para não: ")
					leia(exames)

					se(exames == "S") {
						escreva("\nAproveite a piscina :)")
					} senao se(exames == "N") {
						escreva("\nFaça os exames para aproveitar a piscina :(")
					}
				}				
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */