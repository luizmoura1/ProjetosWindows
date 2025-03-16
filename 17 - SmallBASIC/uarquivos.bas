unit uarquivos
export abrir
export salvar
export nomear

func abrir(file)
   if exist(file) then
       tload file, meu_arr
   else
       meu_arr = []
   endif
   return meu_arr
end

sub salvar(file, linha)
   if exist(file) then
       tload file, old_str, 1
       linha = old_str + "\n" + linha
   endif
   tsave file, linha
end

func nomear()
   repeat
       input "Nome do arquivo: ", nome
   until nome <> ""
   return nome
end
