import umenu as men
import uregistros as reg
import uarquivos as arq

file = "tabela.txt"

repeat
   opt = men.menu()
   select case opt
       case 1
           linha = reg.inserir()
           arq.salvar(file, linha)
           linha = ""
       case 2
           meu_arr = arq.abrir(file)
           reg.exibir(meu_arr)
       case 3
           file = arq.nomear()
       case else
           ? "\e[2J"
           ? "\e[0;0H"
   end select
until opt = 0