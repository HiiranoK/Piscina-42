# 💻 42 Dotfiles

Este repositório contém meu ambiente de desenvolvimento configurado para a Piscina da 42. Ele automatiza o setup do Vim, aliases úteis para o terminal e regras de compilação.

## Como Instalar

Siga estes passos no seu terminal:

1. **Clonar o repositório:**
   ```Bash
       git clone https://github.com/HiiranoK/dotfiles.git ~/dotfiles
2. **Executar a instalação**
   ```Bash
      chmod +x install.sh
      ./install.sh
      cd ~/dotfiles
3. **Recarregar as configurações:**
    ```Bash
        source ~/.zshrc
    ```
## 🛠️ O que está incluído?

### 1. Aliases de Terminal
* **m**: Atalho que executa o Makefile central localizado em `~/dotfiles`. (evita Makefile em cada pasta)
* **mrun**: Compila, executa o `./programa` aceita args.
* **mclean**: Limpa .o
* **mfclean** Limpa .o e o binário `./programa`.
* **val**: Atalho para o Valgrind com `--leak-check=full` para encontrar memory leaks.
* **norm**: Atalho para `normanitte -R CheckForbiddenSourceHeader`
* **cc42**: Atalho para `cc -Wall -Wextra -Werror"`


### 2. Configurações do Vim
* **Undo persistente**: Undo funciona mesmo após fechar o arquivo.
* **Gestão de Swap**: Arquivos temporários do Vim ficam organizados em `~/.vim/`.
* **Comando :T**: Abre um terminal vertical dentro do Vim para agilizar testes.

### 3. Makefile Mestre
* Compilação automática via wildcard.
* Flags obrigatórias: `-Wall -Wextra -Werror`.

### 4. Gitignore Global
Bloqueia automaticamente arquivos lixo (.o, a.out, arquivos de swap do Vim) em todos os seus repositórios.


### 5. Bonus
[Meu notion sobre C](https://www.notion.so/C-Um-Resumo-2417f19370428031a9b0e64e2f76f47f)
