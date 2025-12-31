
#!/bin/bash

# 1. Criar pastas de suporte para o Vim (evita erros de "folder not found")
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/undo
mkdir -p $HOME/.vim/backup

# 2. Criar links simbólicos
# O comando ln -sf substitui o arquivo se ele já existir (force)
ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc
# define o arquivo gitignore da pasta dotfiles como o padrão do git.
git config --global core.excludesfile $HOME/dotfiles/gitignore
# 3. Adicionar Aliases ao .zshrc (terminal padrão da 42)
# Usamos o 'grep' para não duplicar a linha caso você rode o script duas vezes
if ! grep -q "alias mrun=" $HOME/.zshrc; then
    echo "alias mrun='make re && ./programa && make clean'" >> $HOME/.zshrc
    echo "alias val='valgrind --leak-check=full'" >> $HOME/.zshrc
fi
echo "✅ Setup concluído! O arquivo .vimrc agora aponta para ~/dotfiles/vimrc"
echo "Recarregue o terminal com: source ~/.zshrc"
