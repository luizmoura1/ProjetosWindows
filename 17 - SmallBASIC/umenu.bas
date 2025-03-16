unit umenu
export menu

func menu()
   ?
   ? "========== M E N U =========="
   ? "1 - Inserir registro"
   ? "2 - Exibir registros"
   ? "3 - Novo arquivo"
   ? "0 - Sair"
   input "Escolha uma alternativa: ", opt
   return opt	
end