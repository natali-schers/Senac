programa {
	funcao inicio() {
		inteiro qntdConvidados
		inteiro adtAlfa = 150
	     inteiro adtBeta = 350
	    
	    escreva("Digite a quantidade de convidados: ")
	    leia(qntdConvidados)
	    
	    se (qntdConvidados < 0 ou qntdConvidados > 350) {
	        escreva("\nNúmero de convidados inválido!")
	    }
	    senao se(qntdConvidados >= 0 e qntdConvidados <= 220) {
	        se(qntdConvidados <= 150) {
	            escreva("\nUse o auditório Alfa!")
	        } 
	        senao se (qntdConvidados > 150) {
	            inteiro totalAdicional = qntdConvidados - adtAlfa
	            escreva("\nUse o auditório Alfa e adicione ", totalAdicional, " cadeira(s)!")
	        }
	    }
	    senao se(qntdConvidados > 220 e qntdConvidados <= 350 ) {
            escreva("\nUse o auditório Beta!")
	    }
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */