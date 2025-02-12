FONCTIONS_UTILISEES
FONCTION escrever_registro( )
VARIABLES_FONCTION
j EST_DU_TYPE NOMBRE
DEBUT_FONCTION
AFFICHER* "Escrever registro"
SI (pos < npos) ALORS
DEBUT_SI
AFFICHER "Informe o ID: "
LIRE id[pos]
AFFICHER "Informe o nome: "
LIRE nome
campo PREND_LA_VALEUR nome.length
POUR j ALLANT_DE 1 A 16 - campo
DEBUT_POUR
nome PREND_LA_VALEUR nome + " "
FIN_POUR
nomes PREND_LA_VALEUR nomes + nome + ","
AFFICHER "Informe o sexo (M/F): "
TANT_QUE (sexo != "M" et sexo != "m" et sexo != "F" et sexo != "f") FAIRE
DEBUT_TANT_QUE
LIRE sexo
FIN_TANT_QUE
campo PREND_LA_VALEUR sexo.length
POUR j ALLANT_DE 1 A 8 - campo
DEBUT_POUR
sexo PREND_LA_VALEUR sexo + " "
FIN_POUR
sexos PREND_LA_VALEUR sexos + sexo + ","
AFFICHER "Informe a nota (0-10): "
nota[pos] PREND_LA_VALEUR 100
TANT_QUE (nota[pos] < 0 ou nota[pos] > 10) FAIRE
DEBUT_TANT_QUE
LIRE nota[pos]
FIN_TANT_QUE
AFFICHER "Aprovado? (V/F): "
TANT_QUE (aprovado != "V" et aprovado != "v" et aprovado != "F" et aprovado != "f") FAIRE
DEBUT_TANT_QUE
LIRE aprovado
FIN_TANT_QUE
campo PREND_LA_VALEUR aprovado.length
POUR j ALLANT_DE 1 A 12 - campo
DEBUT_POUR
aprovado PREND_LA_VALEUR aprovado + " "
FIN_POUR
aprovados PREND_LA_VALEUR aprovados + aprovado + ","
FIN_SI
pos PREND_LA_VALEUR pos + 1
FIN_FONCTION
FONCTION ler_registro( )
VARIABLES_FONCTION
aux EST_DU_TYPE CHAINE
k EST_DU_TYPE NOMBRE
DEBUT_FONCTION
AFFICHER* "Ler registro"
POUR k ALLANT_DE 0 A pos - 1
DEBUT_POUR
AFFICHER id[k]
AFFICHER " | "
aux PREND_LA_VALEUR nomes.substr(0+17*k, 16)
AFFICHER aux
AFFICHER " | "
aux PREND_LA_VALEUR sexos.substr(0+9*k, 8)
AFFICHER aux
AFFICHER " | "
AFFICHER nota[k]
AFFICHER " | "
aux PREND_LA_VALEUR aprovados.substr(0+13*k, 12)
AFFICHER* aux
FIN_POUR
FIN_FONCTION
FONCTION mostrar_menu( )
VARIABLES_FONCTION
DEBUT_FONCTION
AFFICHER* "========== Menu =========="
AFFICHER* "1. Inserir registros"
AFFICHER* "2. Exibir registros"
AFFICHER* "3. Sair"
AFFICHER "Escolha uma alternativa (1/2/3): "
LIRE opt
FIN_FONCTION
VARIABLES
opt EST_DU_TYPE CHAINE
npos EST_DU_TYPE NOMBRE
pos EST_DU_TYPE NOMBRE
id EST_DU_TYPE LISTE
nome EST_DU_TYPE CHAINE
nomes EST_DU_TYPE CHAINE
campo EST_DU_TYPE NOMBRE
sexo EST_DU_TYPE CHAINE
sexos EST_DU_TYPE CHAINE
nota EST_DU_TYPE LISTE
aprovado EST_DU_TYPE CHAINE
aprovados EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
npos PREND_LA_VALEUR 3
pos PREND_LA_VALEUR 0
TANT_QUE (opt != "3") FAIRE
DEBUT_TANT_QUE
APPELER_FONCTION mostrar_menu()
SI (opt == "1") ALORS
DEBUT_SI
APPELER_FONCTION escrever_registro()
FIN_SI
SI (opt == "2") ALORS
DEBUT_SI
APPELER_FONCTION ler_registro()
FIN_SI
FIN_TANT_QUE
FIN_ALGORITHME
