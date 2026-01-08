" =============================================================================
" --- CONFIGURAÇÃO 42 HEADER ---
" =============================================================================
let g:user42 = 'seu_login'
let g:mail42 = 'seu_login@student.42sp.org.br'

" Atalho F1 para inserir o cabeçalho padrão da 42
map <F1> :Stdheader<CR>

" =============================================================================
" --- CONFIGURAÇÕES VISUAIS E INTERFACE ---
" =============================================================================
filetype plugin indent on      " Detecta o tipo do arquivo e carrega plugins/indentação
syntax on                     " Ativa a coloração de sintaxe
set number                    " Ativa números de linha
set cursorline                " Destaca a linha onde o cursor está posicionado
set laststatus=2              " Mantém a linha de status sempre visível
set showmode                  " Exibe o modo atual (INSERT, VISUAL, etc.) no rodapé
set colorcolumn=81            " Exibe uma linha vertical na coluna 81 para controle da Norma
set splitright                " Garante que novos splits verticais abram à direita

" Configuração da Linha de Status personalizada
" %F: caminho total, %m: modificado, %r: leitura, %p%%: porcentagem, %l/%L: linha atual/total
set statusline=%F%m%r%h%w\ [FORMAT=%p%%]\ [LINE=%l/%L]

" =============================================================================
" --- COMPORTAMENTO E ÁREA DE TRANSFERÊNCIA ---
" =============================================================================
set clipboard=unnamedplus     " Permite usar Ctrl+C e Ctrl+V do sistema operacional
set viminfo='100,<1000,s10,h  " Define limites do histórico e tamanho do buffer de cópia
set smartindent               " Faz a indentação de forma inteligente ao abrir blocos
set hlsearch                  " Destaca todos os resultados da busca
set incsearch                 " Move o cursor para o resultado enquanto você digita a busca
set ignorecase                " Ignora maiúsculas/minúsculas na busca
set smartcase                 " Se houver uma letra maiúscula na busca, desativa o ignorecase

" =============================================================================
" --- PADRÃO DE TABULAÇÃO (NORMA 42) ---
" =============================================================================
set tabstop=4                 " Define que 1 Tab visualmente equivale a 4 espaços
set shiftwidth=4              " Define o tamanho da indentação automática
set noexpandtab               " Usa caracteres de Tabulação reais (obrigatório na 42)
set copyindent                " Usa a mesma estrutura de Tabs/Espaços da linha anterior
set preserveindent            " Garante que a indentação original não seja alterada
set list listchars=trail:.,tab:>- " Torna Tabs e espaços no final da linha visíveis

" Garante as regras de Tab para C e C++ especificamente
autocmd FileType c,cpp setlocal noexpandtab tabstop=4 shiftwidth=4

" =============================================================================
" --- GESTÃO DE ARQUIVOS TEMPORÁRIOS E HISTÓRICO ---
" =============================================================================
" Organiza arquivos de recuperação, backup e histórico de desfazer em pastas específicas
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set undofile                  " Mantém o histórico de 'undo' mesmo após fechar o arquivo

" =============================================================================
" --- ATALHOS E COMANDOS PERSONALIZADOS ---
" =============================================================================

" Mover linhas para cima ou para baixo com Ctrl+j e Ctrl+k
" No modo normal:
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" No modo visual (move blocos selecionados):
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Atalho para formatar chaves na Norma 42 ao pressionar Enter após {
inoremap {<CR> <CR>{<CR><BS><TAB><CR>}<ESC>ki<TAB><Del>

" Cria o comando :T para abrir um terminal vertical à direita
command! T vertical terminal
