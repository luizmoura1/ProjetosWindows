algoritmo
declare
	linha[64] registro (id numerico nome literal sexo literal nota numerico aprovado logico)
	max, n, i, j numerico
inicio
	max <- 64
	i <- 1
	escreva "--------------- T A B E L A ---------------"
	escreva "Informe o numero de registros: "
	leia n
	se n > 0 e n <= max entao
		enquanto i <= n faca
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
			i <- i + 1
		fim
	senao
		escreva "Erro! Tamanho do vetor: ", max
	
	escreva "--------------------------------------------"
	i <- i - 1
	para j <- 1 ate i faca
		escreva linha[j].id, " ", linha[j].nome, " ", linha[j].sexo, " ", linha[j].nota, " ", linha[j].aprovado  
	escreva "--------------------------------------------"
fim	
fim_algoritmo
