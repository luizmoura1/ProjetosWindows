algoritmo
declare
	linha[64] registro (id numerico nome literal sexo literal nota numerico aprovado logico)
	max, i, j numerico
	aux literal
inicio
	max <- 64
	i <- 0
	repita
		limpar_tela()
		escreva "--------------- T A B E L A ---------------"
		escreva "1 - Inserir registro"
		escreva "2 - Exibir registro"
		escreva "3 - SAIR"
		leia aux
		se aux = "1" entao
			escrever_registro()
		se aux = "2" entao
			ler_registro()
			
	ate aux = "3"
fim
fim_algoritmo
sub-rotina escrever_registro ()	
	i <- i + 1
	se i <= max entao
		inicio
			escreva "ID: "
			leia linha[i].id
				
			escreva "Nome: "
			leia linha[i].nome	
			
			repita
				escreva "Sexo: "
				leia linha[i].sexo
			ate linha[i].sexo = "M" ou linha[i].sexo = "F"	
			
			linha[i].nota <- 100
			repita
				escreva "Nota: "
				leia linha[i].nota
			ate linha[i].nota > -1 e linha[i].nota < 11
			
			se linha[i].nota >= 5 entao
				linha[i].aprovado <- verdadeiro
			senao
				linha[i].aprovado <- falso
		fim
	senao
		inicio
			escreva "Erro! Tamanho do vetor: ", max
			i <- i - 1
		fim
fim_sub_rotina escrever_registro
sub-rotina ler_registro ()
	escreva "--------------------------------------------"
	para j <- 1 ate i faca
		escreva linha[j].id, " ", linha[j].nome, " ", linha[j].sexo, " ", linha[j].nota, " ", linha[j].aprovado  
	escreva "--------------------------------------------"
	escreva "Pressione uma tecla"
	leia aux
fim_sub_rotina ler_registro
