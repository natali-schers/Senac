programa {
	funcao inicio() {		
		inteiro qntdConvidados
		real qntdCafe = 0.2
		real qntdAgua = 0.5
		inteiro qntdSalgados = 7
		
		escreva("Digite a quantidade de convidados: ")
		leia(qntdConvidados)
		
		se(qntdConvidados < 30) {
		    escreva("\nQuantidade de convidados inferior a capacidade permitida!")
		} 
		
		se(qntdConvidados > 350) {
	        escreva("\nQuantidade de convidados superior a capacidade permitida!")
		} 
		
		se (qntdConvidados >= 30 e qntdConvidados <= 350) {
		    real totalCafe = qntdConvidados * qntdCafe
		    real totalAgua = qntdConvidados * qntdAgua
		    inteiro totalSalgados = qntdConvidados * qntdSalgados
		    escreva("\n", totalCafe, " litro(s) de café, ", totalAgua, " litro(s) de água e ", totalSalgados, " salgadinhos.")
		} 
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */