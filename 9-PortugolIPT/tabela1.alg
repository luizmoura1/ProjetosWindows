inicio
    inteiro id[64]
    texto nome[64]
    caracter sexo[64]
    real nota[64]
    logico aprovado[64]
  
    inteiro MAX <- 2
    inteiro n, i, j
     
    escrever "--------------- T A B E L A ---------------\n"
    escrever "Informe o número de registros: "
    ler n
    se n > 0 e n <= MAX entao
        enquanto i < n faz
            escrever "ID: "
            ler id[i]
 
            escrever "Nome: "
            ler nome[i]
 
            faz
                escrever "Sexo (M/F): "
                ler sexo[i]
            enquanto sexo[i] =/= "M" e sexo[i] =/= "F"
             
            faz
                escrever "Nota (0-10): "
                ler nota[i]
            enquanto nota[i] < 0 ou nota[i] > 10
             
            se nota[i] >= 5 entao
                aprovado[i] <- verdadeiro
            senao
                aprovado[i] <- falso
            fimse
             
            i <- i + 1
        fimenquanto
    senao
        escrever "Erro! Tamanho do vetor: ", MAX
    fimse
 
    escrever "-------------------------------------------\n"  
    j <- 0
    repete
        escrever id[j], "\t", nome[j], "\t", sexo[j], "\t", nota[j], "\t", aprovado[j], "\n"       
        j <- j + 1
    ate j = i
    escrever "-------------------------------------------"  
fim