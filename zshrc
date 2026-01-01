#Função para mudar o nome do executável atual
setp(){
    export P42="$1"
    echo " Projeto atual definido como: $42"
}

# --- ALIASES PARA A 42 ---
# Usa o Makefile central para testes rápidos
alias m42="make -f $HOME/dotfiles/Makefile"

# Usar o Makefile dentro da pasta do exercício (Exigência da Norma) [cite: 162]
alias m="make"

# Compila do zero e executa (aceita argumentos)
alias mrun="m re && ./$P42"

# Copia o arquivo Makefile para o diretório atual
alias cpmf="cp ~/dotfiles/Makefile ./"

# Limpeza local [cite: 162]
alias mclean="m clean"
alias mfclean="m fclean"

# Ferramentas de validação da Norma e Memória
alias val="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$P42" 
alias norm="norminette -R CheckForbiddenSourceHeader"
alias cc42="cc -Wall -Wextra -Werror"
# --- CUSTOMIZAÇÕES EXTRAS ---
# Você pode adicionar cores ou um prompt customizado aqui se quiser no futuro
export EDITOR="vim"
