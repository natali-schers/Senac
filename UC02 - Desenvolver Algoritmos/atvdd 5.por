programa
{
	inteiro h = 0
	inteiro indc = 0
	cadeia nome
	cadeia documento
	inteiro diasHospedagem
	real vlrDespesa = 100.00
	cadeia nomes[10]
	cadeia documentos[10]
	inteiro hospedagens[10]
	real vlrTotal[10]
	real despesas[10]
	cadeia quarto[10]
	inteiro indcHospede[10]
	inteiro indcQuarto
		
	funcao inicio()
	{
		para(inteiro i = 0; i < 10; i++)
		{			
			quarto[i] = "Livre"
		}
		
		menu()
	}

	funcao menu() 
	{
		inteiro opcaoMenu
		logico continuar = verdadeiro
	
		faca
		{
			escreva("\nPor favor, digite: \n")
			escreva("1 - Cadastar um hóspede\n")
			escreva("2 - Exibir hóspedes cadastrados\n")
			escreva("3 - Exibir Quartos\n")
			escreva("4 - Atribuir um hóspede ao quarto\n")
			escreva("5 - Área de Lazer\n")
			escreva("6 - Check-out\n")
			escreva("0 - Sair\n")
			leia(opcaoMenu)

			limpa()

			escolha(opcaoMenu)
			{
				caso 0: 
				{
					continuar = falso
					escreva("Programa finalizado!")
					pare
				}
								
				caso 1:
				{
					cadastro()
					h++
					pare
				}

				caso 2:
				{
					exibirHospedes()
					pare
				}

				caso 3:
				{
					exibirQuartos()
					pare
				}
				
				caso 4:
				{
					atribuirQuarto()
					pare
				}

				caso 5: 
				{
					lazer()
					pare
				}
				
				caso 6:
				{	
					exibirHospedes()
					
					se(h != 0) 	
					{
						escreva("\nDigite o índice do hóspede: ")
						leia(indc)
	
						checkout(indc)
	
						escreva(nomes[indc], ", seu checkout foi realizado com sucesso! O total a ser pago é: R$", vlrTotal[indc], "\n")
					}
					pare
				}
				
			}
		} enquanto (continuar == verdadeiro)
	}

	funcao cadastro() 
	{
		cadeia confirma = "Não"
		
		se(indc >= 10)
		{
			escreva("Limite de hóspedes atingido!\n")
		} 
		senao
		{
			enquanto (confirma == "não" ou confirma == "Não")
			{	
				limpa()
			
				escreva("Digite o nome do hóspede: ")
				leia(nome)
				nomes[h] = nome
	
				escreva("Digite o documento do hóspede: ")
				leia(documento)
				documentos[h] = documento
	
				escreva("Digite quantos dias ficará hospedado: ")
				leia(diasHospedagem)
				hospedagens[h] = diasHospedagem

				indcHospede[h] = h
				
				limpa()

				escreva("Nome do hóspede: ", nome)
				escreva("\nDocumento do hóspede: ", documento)
				escreva("\nQuantidade de dias hospedado: ", diasHospedagem)
				escreva("\nValor da diária: R$100,00")

				escreva("\n\nOs dados estão corretos? (Digite Sim ou Não) ")
				leia(confirma)			
			}
			limpa()
			escreva("Hóspede cadastrado com sucesso!\n")
		}
	}

	funcao exibirHospedes() 
	{
		limpa()
		se(h != 0)
		{
			para (inteiro i = 0; i < h; i++) 
			{	
				escreva("\nÍndice do hóspede: ", indcHospede[i])
				escreva("\nNome do hóspede: ", nomes[i])
				escreva("\nDocumento do hóspede: ", documentos[i])
				escreva("\nQuantidade de dias hospedado: ", hospedagens[i], "\n")
			}		
		} senao {
			escreva("Nenhum hóspede cadastrado!\n")
		}
	}

	funcao exibirQuartos()
	{
		para(inteiro q = 0; q < 10; q++)
		{
			se(quarto[q] == "Livre")
			{
				escreva("\nQuarto ", q," => ", quarto[q])
			}
			
			se(quarto[q] != "Livre")
			{
				escreva("\nQuarto ", q," => ", quarto[q])
			}
		}
		
		escreva("\n")	
	}

	funcao atribuirQuarto()
	{
		exibirHospedes()

		se (h != 0)
		{
			exibirQuartos()
		
			escreva("\nDigite o índice do hóspede: \n")
			leia(indc)

			se(indcHospede[indc] > 9 ou indcHospede[indc] < 0) 
			{
				escreva("\nÍndice inválido!\n")
			} 
			senao {
				escreva("\nDigite o índice do quarto: ")
				leia(indcQuarto)
	
				se(indcQuarto < 0 ou indcQuarto > 9) {
					escreva("Índice inválido!\n")
				} 
				senao
				{
					se(quarto[indcQuarto] == "Livre") {
						quarto[indcQuarto] = nomes[indc]
						limpa()
						escreva("Quarto atribuído ao hóspede com sucesso!")
					} 
					senao se (quarto[indcQuarto] != "Livre") 
					{
						limpa()
						escreva("Quarto indisponível!\n")
					}
	
					exibirQuartos()	
				}	
			}
		}
	}

	funcao lazer() 
	{
		caracter areaLazer

		exibirHospedes()

		se (h != 0)
		{
			escreva("\nDigite o índice do hóspede: ")
			leia(indc)
	
			se(indcHospede[indc] > 9 ou indcHospede[indc] < 0) 
			{
				escreva("\nÍndice inválido!\n")
			} 
			senao 
			{
				escreva("Para reservar uma das áreas de lazer, digite:")
				escreva("\nA para Academia")
				escreva("\nS para Salão de Festas")
				escreva("\nR para Restaurante\n")
				leia(areaLazer)
	
				limpa()
				
				escolha(areaLazer)
					{
					caso 'A': {
						real vlrAcademia = 20.0
						vlrTotal[indc] = vlrTotal[indc] + vlrAcademia
						escreva("Obrigado, ", nomes[indc], " a Academia está reservada e o valor já foi adicionado a sua conta!\n")
						pare
					}
		
					caso 'S': {
						real vlrSalao = 50.0
						vlrTotal[indc] = vlrTotal[indc] + vlrSalao
						escreva("Obrigado, ", nomes[indc], " o Salão de Festas está reservado e o valor já foi adicionado a sua conta!\n")
						pare
					}
		
					caso 'R': {
						real vlrRestaurante = 35.0
						vlrTotal[indc] = vlrTotal[indc] + vlrRestaurante
						escreva("Obrigado, ", nomes[indc], " o Restaurante está reservado e o valor já foi adicionado a sua conta!\n")
						pare
					}
				}
			}
		}
	}

	funcao checkout(inteiro indcLiberado)
	{
		para(inteiro i = 0; i < 10; i++)
		{
			se (nomes[indcLiberado] == quarto[i])
			{
				quarto[i] = "Livre"
				vlrTotal[indcLiberado] = vlrTotal[indcLiberado] + hospedagens[indcLiberado] * vlrDespesa
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5359; 
 * @DOBRAMENTO-CODIGO = [48, 55, 62, 68, 74, 106, 166];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */