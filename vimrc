" --- CONFIGURAÇÕES VISUAIS E COMPORTAMENTO ---
filetype plugin indent on
syntax on
set number           " Ativa números de linha [cite: 13, 16]
set cursorline       " Destaca a linha atual
set laststatus=2     " Sempre mostra a linha de status [cite: 81]
set showmode         " Mostra se está no modo INSERT, VISUAL, etc. [cite: 12, 44, 16]
set colorcolumn=80   " Régua vertical no limite da Norminette
set clipboard=unnamedplus " Integração com o Ctrl+C/Ctrl+V do sistema

" --- PADRÃO DE TABULAÇÃO 42 ---
set tabstop=4       " Tab com largura de 4 espaços
set shiftwidth=4    " Indentação automática de 4 espaços
set expandtab       " Converte Tabs em espaços

" --- BUSCA INTELIGENTE ---
set hlsearch
set incsearch
set ignorecase
set smartcase

" --- GESTÃO DE ARQUIVOS TEMPORÁRIOS (SWAP) ---
" Centraliza os arquivos para não poluir as pastas dos exercícios
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set undofile        " Mantém histórico de UNDO mesmo após fechar o arquivo

" --- ATALHOS E COMANDOS ---
" Atalho para abrir terminal em split vertical
command T vsp term://zsh

" Customização da linha de status (estilo Emacs)
set statusline=%F%m%r%h%w\ [FORMAT=%p%%]\ [LINE=%l/%L]
