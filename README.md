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
## O está incluído?
**1. Aliases de Terminal**
    * **m re:** Compila o projeto usando o Makefile central do repositório.
    * **mrun:** Compila, executa o ./programa e limpa os objetos.
    * **mclean:** Executa o make clean na pasta atual.
    * **val:** Atalho para o Valgrind com check de vazamento de memória (--leak-check=full).

**2. Configurações do Vim**
    * Histórico de Undo persistente (mesmo após fechar o arquivo).
    * Gerenciamento automático de arquivos de Swap e Backup na pasta ~/.vim/.
    * Atalhos rápidos para gerenciamento de buffers e janelas.

**3. Makefile Mestre**
    * Compilação automática de todos os arquivos .c da pasta atual usando wildcard.
    * Flags de erro da 42 inclusas: -Wall -Wextra -Werror.

**4. Gitignore Global**
Bloqueia automaticamente arquivos lixo (.o, a.out, arquivos de swap do Vim) em todos os seus repositórios.


**5. Bonus**

[Meu notion sobre C](https://www.notion.so/C-Um-Resumo-2417f19370428031a9b0e64e2f76f47f)
