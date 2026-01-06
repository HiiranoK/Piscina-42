" --- CONFIGURAÇÃO 43 HEADER ---
let g:user42 = 'seu_login'
let g:mail42 = 'seu_login@student.42sp.org.br'

" Atalho padrão é F1, mas você pode garantir aqui:
map <F1> :Stdheader<CR>
" --- CONFIGURAÇÕES VISUAIS E COMPORTAMENTO ---
filetype plugin indent on
syntax on
set number              " Ativa números de linha
set cursorline          " Destaca a linha atual
set laststatus=2        " Sempre mostra a linha de status
set showmode            " Mostra se está no modo INSERT, VISUAL, etc.
set colorcolumn=81      " Régua na coluna 81 (A Norma permite até 80 caracteres)
set clipboard=unnamedplus " Integração com o Ctrl+C/Ctrl+V do sistema
set viminfo='100,<1000,s10,h " Aumenta o buffer para copiar blocos grandes

" --- PADRÃO DE TABULAÇÃO 42 (CORRIGIDO) ---
set tabstop=4           " Largura visual do Tab é 4
set shiftwidth=4        " Indentação automática de 4
set noexpandtab         " NÃO converte Tab em espaços (Obrigatório na 42)
set copyindent          " Copia a estrutura de indentação anterior
set preserveindent      " Mantém as tabulações originais
set list listchars=trail:.,tab:>-
" --- BUSCA INTELIGENTE ---
set hlsearch
set incsearch
set ignorecase
set smartcase

" --- GESTÃO DE ARQUIVOS TEMPORÁRIOS (SWAP) ---
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set undofile

" --- ATALHOS E COMANDOS ---
" Abre o terminal à direita, no diretório atual, e fecha a janela ao sair
set splitright " Garante que novos splits verticais abram SEMPRE à direita
command! T vertical terminal 

" --- CONFIGURAÇÃO ESPECÍFICA PARA C (NORMA 42) ---
" Garante que em arquivos .c e .h a indentação seja sempre por Tabs
autocmd FileType c,cpp setlocal noexpandtab tabstop=4 shiftwidth=4

" --- LINHA DE STATUS ---
set statusline=%F%m%r%h%w\ [FORMAT=%p%%]\ [LINE=%l/%L]
