tipo estrutura tabela
inicio
    inteiro id
    texto nome
    caracter sexo
    real nota
fimestrutura
 
inicio
    tabela reg[64]
    inteiro MAX <- 2
    inteiro n, i, j
 
    escrever "--------------- T A B E L A ---------------\n"   
    escrever "Informe o número de registros: "
    ler n
    se n > 0 e n <= MAX entao
        enquanto i < n faz
            escrever "ID: "
            ler reg[i].id
 
            escrever "Nome: "
            ler reg[i].nome
 
            escrever "Sexo (M/F): "
            ler reg[i].sexo
             
            escrever "Nota (0-10): "
            ler reg[i].nota
             
            i <- i + 1
        fimenquanto
    senao
        escrever "Erro! Tamanho do vetor: ", MAX
    fimse
     
    escrever "-------------------------------------------\n"
    j <- 0
    repete
        escrever reg[j].id, "\t", reg[j].nome, "\t", reg[j].sexo, "\t", reg[j].nota, "\n"       
        j <- j + 1
    ate j = i
    escrever "-------------------------------------------"  
fim
