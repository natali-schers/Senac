programa
{
	funcao inicio()
	{
		cadeia quartos[10] 
		cadeia continuar = "S"
		cadeia ocupacao
		inteiro nmrQuarto = 0
		
		para(inteiro i = 0; i <= 9; i++)
		{
			quartos[i] = "L"
		}
		
		faca 
		{
			escreva("Digite o número do quarto de 1 a 10: ")
			leia(nmrQuarto)

			se (nmrQuarto < 1 ou nmrQuarto > 10)
			{
				escreva("Esse quarto não existe!\n")
			} 
			senao 
			{
				escreva("O quarto está livre ou ocupado? (Digite L para LIVRE e O para OCUPADO) ")
				leia(ocupacao)
				nmrQuarto = nmrQuarto - 1
				
			     se (ocupacao == "O" ou ocupacao == "o")
				{
					se (quartos[nmrQuarto] == "O")
					{
						escreva("\nEste quarto já está ocupado!")
					} senao {
						quartos[nmrQuarto] = "O"
						escreva("\nQuarto ocupado!")
					}
				}
				
				senao se (ocupacao == "L" ou ocupacao == "l")
				{	
					se(quartos[nmrQuarto] == "L")
					{
						escreva("\nEste quarto já está vazio!")
					} senao {
						quartos[nmrQuarto] = "L"
						escreva("\nQuarto liberado!")
					}
				}

				para (inteiro i = 0; i < 10; i++)
				{
					escreva("\nQuarto ", i + 1, " : ", quartos[i])
				}
				escreva("\nDeseja continuar? (Digite S para SIM e N para NÃO) ")
				leia(continuar)
			}			
		} enquanto (continuar == "S" ou continuar == "s")
	}			
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 948; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */