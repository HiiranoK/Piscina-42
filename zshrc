# --- ALIASES PARA A 42 ---
# Usa o Makefile central para compilar
alias m="make -f $HOME/dotfiles/Makefile"
# Limpa e compila do zero, depois executa (aceita argumentos no final)
alias mrun="m re && ./programa"
# Limpa os objetos usando o Makefile central
alias mclean="m clean"
# Limpa tudo (incluindo o binário)
alias mfclean="m fclean"

alias val='valgrind --leak-check=full'
alias norm="norminette -R CheckForbiddenSourceHeader"
alias cc42="cc -Wall -Wextra -Werror"


# --- CUSTOMIZAÇÕES EXTRAS ---
# Você pode adicionar cores ou um prompt customizado aqui se quiser no futuro
export EDITOR="vim"
