variaveis
  MAX, pos, i, ids : inteiro;
  nomes : cadeia;
  aux, sexos : caractere;
  notas : real;
  id : vetor[1..64] de inteiro;
  nome : vetor[1..64] de cadeia;
  sexo : vetor[1..64] de caractere;
  nota : vetor[1..64] de real;
  aprovado : vetor[1..64] de logico;
  escrever_registro : modulo;
  ler_registro : modulo;
 
inicio
  MAX <- 64;
  pos <- 0;
  repita
    escrever "========= R E G I S T R O S =========";
    escrever "1 - Inserir registros";
    escrever "2 - Exibir registros";
    escrever "Qualquer outra tecla - SAIR";
    ler aux;
    se aux = "1" entao
      escrever "Inserindo registros...";
      escrever_registro;
    fim se;
    se aux = "2" entao
      escrever "Exibindo registros... ";
      ler_registro;
    fim se;
  ate aux = "1" ou aux = "2";
fim
 
modulo escrever_registro
  pos <- pos + 1;
  se pos <= MAX entao 
    escrever "ID: ";
    ler ids;
    id[pos] <- ids;
    escrever "Nome: ";
    ler nomes;
    nome[pos] <- nomes;
    repita
      escrever "Sexo: ";
      ler sexos;
    ate sexos <> "M" e sexos <> "F";
    sexo[pos] <- sexos;
    repita
      escrever "Nota: ";
      ler notas;
    ate notas < 0.0 ou notas > 10.0;
    nota[pos] <- notas;
    se nota[pos] >= 5.0 entao
      aprovado[pos] <- verdadeiro;
    senao
      aprovado[pos] <- falso;
    fim se;    
   senao
     escrever MAX, " registros cadastrados!";
     pos < pos - 1;
   fim se;
fim modulo;
 
modulo ler_registro
  se pos = 0 entao
    escrever "nenhum registro cadastrado!";
  senao
    para i de 1 ate pos passo 1 faca 
        escrever id[i], " ", nome[i], " ", sexo[i], " ", nota[i], " ", aprovado[i];
    fim para;
  fim se; 
fim modulo;
