#!/bin/bash

# 1. Criar pastas do Vim
mkdir -p $HOME/.vim/{swap,undo,backup}

# 2. Link do Vimrc (Geralmente o .vimrc padrão é vazio, então o link é seguro)
ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc

# 3. Injeção Inteligente no .zshrc
# Em vez de linkar o arquivo todo, adicionamos uma linha que carrega seu arquivo de aliases
ZSH_CUSTOM_LINE="source \$HOME/dotfiles/zshrc"

if ! grep -q "source \$HOME/dotfiles/zshrc" "$HOME/.zshrc"; then
    echo -e "\n# Carrega as configuracoes personalizadas do repositório dotfiles" >> "$HOME/.zshrc"
    echo "$ZSH_CUSTOM_LINE" >> "$HOME/.zshrc"
    echo "✅ Linha de carregamento adicionada ao ~/.zshrc com sucesso!"
else
    echo "ℹ️  O ~/.zshrc já possui o link para o dotfiles. Nada a fazer."
fi

# 4. Criar o link simbólico para o Makefile (opcional, como template)
ln -sf $HOME/dotfiles/Makefile $HOME/Makefile_template
# 5. Add gitignore
git config --global core.excludesfile $HOME/dotfiles/gitignore
echo "🚀 Setup concluído! Suas configurações foram mescladas sem apagar as originais."
