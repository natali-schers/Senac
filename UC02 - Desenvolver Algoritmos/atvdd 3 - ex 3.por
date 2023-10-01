programa
{
	
	funcao inicio()
	{	cadeia nomes[7]
		inteiro qntdCadastros = 0
		inteiro acessos
		inteiro i = 0
		logico confirma = verdadeiro

		faca{
			escreva("\nDigite 1 para CADASTRAR, 2 para BUSCAR ou 3 para SAIR: ")
			leia(acessos)
		
			escolha(acessos){
				caso 1:
				{
					se (qntdCadastros > 6) 
					{
						escreva("\nMáximo de cadastros atingido!\n")
						pare
					} 
					senao
					{
						cadeia cadastros
						escreva("\nDigite o nome do hóspede: ")
						leia(cadastros)
						nomes[qntdCadastros] = cadastros
						qntdCadastros++
						pare
					}
				}
				caso 2:
				{
					cadeia busca
					escreva("\nDigite o nome do hóspede que procura: ")
					leia(busca)
					para(i = 0; i < qntdCadastros; i++)
					{
						se(nomes[i] == busca)
						{
							busca++
							escreva("\nHóspede ", nomes[i], " localizado na posição: ", i ,"\n")
							pare
						}
						senao 
						{
							escreva("\nHóspede não encontrado!\n")
							pare
						}
					}	
				}
				caso 3:
				{
					se(acessos == 3)
					{ 
						escreva("Programa finalizado!")
						confirma = falso
						pare
					}
				}
			}
		} enquanto(confirma == verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 965; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 8, 10, 1}-{busca, 35, 12, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */