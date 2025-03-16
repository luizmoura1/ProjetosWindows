'https://computerlanguagesite.wordpress.com/2025/03/10/smallbasic-tabela-com-array-e-map/
linha = {}
registro = []					'dim registro(128)

SUB inserir()
    FOR i = 0 TO numero_de_linhas - 1
        PRINT "REGISTRO "; i+1
        REPEAT
            INPUT "ID: ", linha.id		'linha("id")	linha["id"]
        UNTIL linha.id > 0

        REPEAT
            INPUT "Nome: ", linha.nome
        UNTIL linha.nome > 0

        REPEAT
            INPUT "Sexo (M/F): ", linha.sexo
        UNTIL UCASE(linha.sexo) = "M" OR UCASE(linha.sexo) = "F"

        REPEAT
            INPUT "Nota (0.0-10.0): ", linha.nota
        UNTIL linha.nota >= 0 AND linha.nota <= 10

        IF linha.nota >= 5 THEN
            linha.aprovado = "verdadeiro"
        ELSE
            linha.aprovado = "falso"
        END IF

        registro << linha
    NEXT i
END SUB

SUB exibir()
    FOR i = 0 TO numero_de_linhas - 1
        PRINT "----------------------------------"
        PRINT i+1; ": "; registro(i).id; ", "; registro(i).nome; ", "; registro(i).sexo; ", "; registro(i).nota; ", "; registro(i).aprovado
    NEXT i
END SUB

INPUT "Quantos registros? ", numero_de_linhas		'definir()
inserir()
exibir()

