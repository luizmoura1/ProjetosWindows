unit uregistros
export inserir
export exibir

func inserir()
       meu_map = {}
       ?:? "Inserindo meu registro..."
       repeat
           input "ID: ", meu_map.id
       until meu_map.id > 0

       repeat
           input "Nome: ", meu_map.nome
       until ltrim(meu_map.nome) <> ""

       repeat
           input "Sexo (M/F): ", meu_map.sexo
       until ucase(meu_map.sexo) = "M" or ucase(meu_map.sexo) = "F"

       repeat
           input "Nota (0.0-10.0): ", meu_map.nota
       until meu_map.nota >= 0 and meu_map.nota <= 10

       if meu_map.nota >= 5 then
           meu_map.aprovado = "Verdadeiro"			
       else
           meu_map.aprovado = "Falso"
       endif

       linha = str(meu_map)
       return linha
end

sub exibir(meu_arr)
   if len(meu_arr) = 0 then
       ?:? "Nenhum registrado encontrado!"
   else
       meu_map = {}
       for i in meu_arr
           meu_map << array(i)
       next
       ?:? "Exibindo meus registros..."
       '? meu_map
       for j = 0 to len(meu_map) - 1
           ? meu_map(j).id + spc(3);			'meu_map[j].id
           ? meu_map(j).nome + spc(3);			'meu_map[j].nome
           ? meu_map(j).sexo + spc(3);			'meu_map[j].sexo
           ? meu_map(j).nota + spc(3);			'meu_map[j].nota
           ? meu_map(j).aprovado			'meu_map[j].aprovado
       next
   endif
end
