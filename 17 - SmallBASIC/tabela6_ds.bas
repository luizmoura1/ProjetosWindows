'DIM id(128), nome(128), sexo(128), nota(128), aprovado(128)
id = []
nome = []
sexo = []
nota = []
aprovado = []

SUB inserir()
   FOR i = 0 TO numero_de_linhas - 1
       PRINT "REGISTRO "; i+1
       REPEAT
           INPUT "ID: ", aux	'id(i)
       UNTIL aux > 0	'id(i)
       id << aux

       REPEAT
           INPUT "Nome: ", aux	'nome(i)
       UNTIL aux > 0		'nome(i)
       nome << aux

       REPEAT
           INPUT "Sexo (M/F): ", aux	'sexo(i)
       UNTIL UCASE(aux) = "M" OR UCASE(aux) = "F"	'sexo(i)
       sexo << aux

       REPEAT
           INPUT "Nota (0.0-10.0): ", aux	'nota(i)
       UNTIL aux >= 0 AND aux <= 10		'nota(i)
       nota << aux

       IF nota(i) >= 5 THEN
           aprovado << "Verdadeiro"		'aprovado(i)
       ELSE
           aprovado << "Falso"			'aprovado(i)
       END IF
   NEXT i
END SUB

SUB exibir()
   FOR i = 0 TO numero_de_linhas - 1
       PRINT "----------------------------------"
       PRINT i+1; ": "; id(i); ", "; nome(i); ", "; sexo(i); ", "; nota(i); ", "; aprovado(i)
   NEXT i
END SUB

INPUT "Quantos registros? ", numero_de_linhas	'definir()
inserir()
exibir()
