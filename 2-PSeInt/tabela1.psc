Funcion aux <- mostrar_menu
    Definir aux Como Caracter
    Escribir "Menu de alternativas"
    Escribir "1. Inserir registros"
    Escribir "2. Exibir registros"
    Escribir "3. Sair"
    Escribir "Escolha uma das alternativas (1/2/3): "
    Leer aux
Fin Funcion
Funcion pos <- escrever_registro(max, pos, id, nome, sexo, nota, aprovado)
    Definir aux Como Caracter
    pos <- pos + 1
    Si pos <= max Entonces
        Escribir "ID (numero):"
        Leer id[pos]
        Escribir "Nome (texto):"
        Leer nome[pos]
        Escribir "Sexo (M/F):"
        Mientras sexo[pos] <> "M" y sexo[pos] <> "m" y sexo[pos] <> "F" y sexo[pos] <> "f" Hacer
            Leer sexo[pos]
        Fin Mientras
        Escribir "Nota (numero):"
        nota[pos] <- 100
        Mientras no(nota[pos] > -1) o no(nota[pos] < 11)
            Leer nota[pos]
        Fin Mientras
        Escribir "Aprovado? (V/F):"
        Mientras aux <> "V" y aux <> "v" y aux <> "F" y aux <> "f" Hacer
            Leer aux
        Fin Mientras
        Si aux = "V" o aux = "v" Entonces
            aprovado[pos] = Verdadero
        SiNo
            aprovado[pos] = Falso
        Fin Si
    SiNo
        Escribir max, " registros! Pressione alguma tecla:"
        pos <- pos - 1
    Fin Si
    Escribir "Registro: ", id[pos], " ", nome[pos], " ", sexo[pos], " ", nota[pos], " ", aprovado[pos]
    Esperar Tecla
    Borrar Pantalla
FinFuncion
Funcion ler_registro(pos, id, nome, sexo, nota, aprovado)
    Definir j Como Entero
    Definir sid, snota, saprovado Como Caracter
    Si pos = 0 Entonces
        Escribir "Nenhum registro encontrado!"
        Esperar Tecla
    SiNo
        Escribir "ID      NOME                    SEXO    NOTA    APROVADO?"
        Para j = 1 Hasta pos Con Paso 1 Hacer
            sid <- ConvertirATexto(id[j])
            Mientras longitud(sid) < 8 Hacer
                sid <- Concatenar(sid, " ")
            Fin Mientras
            Mientras Longitud(nome[j]) < 24 Hacer
                nome[j] <- Concatenar(nome[j], " ")
            Fin Mientras
            Mientras Longitud(sexo[j]) < 8 Hacer
                sexo[j] <- Concatenar(sexo[j], " ")
            Fin Mientras
            snota <- ConvertirATexto(nota[j])
            Mientras longitud(snota) < 8 Hacer
                snota <- Concatenar(snota, " ")
            Fin Mientras
            Si aprovado[j] = Verdadero Entonces
                saprovado <- "Verdadero"
            SiNo
                saprovado <- "Falso"
            Fin Si
            Escribir sid, nome[j], sexo[j], snota, saprovado
        Fin Para
    Fin Si
    Esperar Tecla
    Borrar Pantalla
FinFuncion
 
Algoritmo tabela
    Definir id, pos, max Como Entero
    Definir nota Como Real
    Definir nome, sexo, aux Como Caracter
    Definir aprovado Como Logico
    Dimension  id[128], nome[128], nota[128], sexo[128], aprovado[128]
    max <- 128
    pos <- 0
    Mientras aux <> "3" Hacer
        aux <- mostrar_menu
        Si aux = "1" Entonces
            pos <- escrever_registro(max, pos, id, nome, sexo, nota, aprovado)
        Fin Si
        Si aux = "2" Entonces
            ler_registro(pos, id, nome, sexo, nota, aprovado)
        FinSi
    Fin Mientras
FinAlgoritmo
