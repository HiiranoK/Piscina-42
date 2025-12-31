# --- ALIASES PARA A 42 ---
alias mrun='make re && ./programa'
alias mclean='make clean'
alias val='valgrind --leak-check=full'
alias norm="norminette -R CheckForbiddenSourceHeader"
alias gcc42="cc -Wall -Wextra -Werror"

# Alias m: Compila usando o Makefile central do dotfiles
alias m="make -f \$HOME/dotfiles/Makefile"

# --- CUSTOMIZAÇÕES EXTRAS ---
# Você pode adicionar cores ou um prompt customizado aqui se quiser no futuro
export EDITOR="vim"
