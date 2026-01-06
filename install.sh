#!/bin/bash

# Detecta o diretório onde o script está localizado (o caminho absoluto da sua pasta dotfiles)
DOTFILES_DIR=$(cd $(dirname $0) && pwd)

echo "Iniciando setup dos dotfiles a partir de: $DOTFILES_DIR"

# 1. Criar pastas do Vim (Para garantir que o Vim não reclame ao tentar salvar swaps)
mkdir -p $HOME/.vim/{swap,undo,backup}

# 2. Links do Vim e Kitty (Usando links simbólicos para sincronização em tempo real)
echo "Criando links simbólicos..."
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"

# Garante que a pasta de config do Kitty exista antes de criar o link
mkdir -p "$HOME/.config/kitty"
# Verifica se o arquivo ou link já existe no destino
if [ -e "$HOME/.config/kitty/kitty.conf" ]; then
    echo "⚠️  Aviso: O arquivo ~/.config/kitty/kitty.conf já existe."
    echo "   O instalador NÃO o sobrescreveu para sua segurança."
else
    ln -s "$DOTFILES_DIR/kitty.conf" "$HOME/.config/kitty/kitty.conf"
    echo "✅ Link simbólico do Kitty criado com sucesso!"
fi
# 3. Injeção Inteligente no .zshrc
# Usamos a variável $DOTFILES_DIR para que o source aponte sempre para o lugar certo
ZSH_CUSTOM_LINE="source $DOTFILES_DIR/zshrc"

if ! grep -q "source.*dotfiles/zshrc" "$HOME/.zshrc"; then
    echo -e "\n# Carrega as configuracoes personalizadas do repositório dotfiles" >> "$HOME/.zshrc"
    echo "$ZSH_CUSTOM_LINE" >> "$HOME/.zshrc"
    echo "✅ Linha de carregamento adicionada ao ~/.zshrc!"
else
    echo "ℹ️ O ~/.zshrc já possui a configuração."
fi

# 4. Git Ignore Global (Segurança extra contra arquivos indesejados)
git config --global core.excludesfile "$DOTFILES_DIR/gitignore"

echo "🚀 Setup concluído com sucesso!"
