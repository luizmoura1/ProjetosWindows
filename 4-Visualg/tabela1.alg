Algoritmo "tabela.alg"
// Disciplina   : [Linguagem e Lógica de Programação]
// Descrição   : Tabela que simula banco de dados com registros e campos
// Autor(a)    : Luiz Moura
// Data atual  : 29/01/2025
//arquivo "tabela.txt"
Tipo
   tp_linha = registro
      id : inteiro
      nome, sexo : caractere
      nota : real
      aprovado : logico
   fimregistro
 
Var
   aux : caractere
   size, i, j : inteiro
   vt_tabela : vetor[1..64] de tp_linha
 
procedimento mostrar_menu
inicio
   limpatela
   escreval ("============== Menu de Alternativas ==============")
   escreval ("1. Inserir registros")
   escreval ("2. Exibir registros")
   escreval ("3. Sair")
   escreval ("Escolha uma alternativa (1/2/3): ")
   leia (aux)
fimprocedimento
 
procedimento escrever_registro
inicio
   escreval ("Escrevendo registro...")
   i <- i + 1
   se i <= size entao
      escreva ("Informe o ID: ")
      leia (vt_tabela[i].id)
 
      escreva ("Informe o Nome: ")
      leia (vt_tabela[i].nome)
 
      escreva ("Informe o Sexo (m / f): ")
      enquanto (vt_tabela[i].sexo <> "m") e (vt_tabela[i].sexo <> "f") faca
         leia (vt_tabela[i].sexo)
      fimenquanto
 
      vt_tabela[i].nota <- 100
      escreva ("Informe a Nota (0.0 - 10.0): ")
      enquanto (vt_tabela[i].nota < 0) ou (vt_tabela[i].nota > 10) faca
         leia (vt_tabela[i].nota)
      fimenquanto
 
      se vt_tabela[i].nota >= 5 entao
         vt_tabela[i].aprovado <- VERDADEIRO
      senao
           vt_tabela[i].aprovado <- FALSO
      fimse
   senao
        escreva(size, " registros cadastrados!")
        i <- i - 1
   fimse
   leia (aux)
fimprocedimento
 
procedimento ler_registro
inicio
   escreval ("Lendo registro...")
   se i = 0 entao
      escreva("Nenhum registro cadastrado!")
   senao
        para j de 1 ate i faca
             escreva (vt_tabela[j].id, "     ")
             escreva (vt_tabela[j].nome:24)
             escreva (vt_tabela[j].sexo:8)
             escreva (vt_tabela[j].nota:8:1)
             escreval (vt_tabela[j].aprovado)
        fimpara
   fimse
   leia (aux)
fimprocedimento
 
Inicio
   size <- 64
   enquanto (aux <> "3") faca
      mostrar_menu()
      se aux = "1" entao
         escrever_registro()
      fimse
      se aux = "2" entao
         ler_registro()
      fimse
   fimenquanto
 
Fimalgoritmo
