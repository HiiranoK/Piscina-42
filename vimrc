" =============================================================================
" --- CONFIGURAÇÃO 42 HEADER ---
" =============================================================================
let g:user42 = 'seu_login'
let g:mail42 = 'seu_login@student.42sp.org.br'

" Atalho F1 para inserir o cabeçalho oficial da 42
map <F1> :Stdheader<CR>

" =============================================================================
" --- CONFIGURAÇÕES VISUAIS E INTERFACE ---
" =============================================================================
filetype plugin indent on      " Habilita detecção de tipo de arquivo e regras de indentação
syntax on                      " Liga o realce de sintaxe colorido
set number                     " Exibe números à esquerda das linhas
set cursorline                 " Cria uma linha horizontal destacando a posição do cursor
set laststatus=2               " Garante que a barra de status inferior sempre apareça
set showmode                   " Mostra se você está no modo INSERT, VISUAL ou NORMAL
set colorcolumn=81             " Colore a coluna 81 para alertar o limite da Norma 42
set splitright                 " Faz com que novos arquivos abertos em split fiquem à direita

" Configura a barra de status personalizada
" %F: caminho, %m: [+] se editado, %r: [RO], %p%%: porcentagem, %l/%L: linha/total
set statusline=%F%m%r%h%w\ [FORMAT=%p%%]\ [LINE=%l/%L]\ %{mode()=~#'[vV]'?printf('[Sel:%d]',line('.')-line('v')+1):''}

" =============================================================================
" --- COMPORTAMENTO E ÁREA DE TRANSFERÊNCIA ---
" =============================================================================
set clipboard=unnamedplus      " Permite copiar/colar entre o Vim e outros apps (Navegador, etc)
set viminfo='100,<1000,s10,h   " Define memória para copiar grandes blocos de texto
set smartindent                " Tenta adivinhar a indentação correta ao abrir novas linhas
set hlsearch                   " Mantém os resultados de buscas destacados
set incsearch                  " Salta para o resultado enquanto você ainda está digitando a busca
set ignorecase                 " Ignora maiúsculas/minúsculas na busca por padrão
set smartcase                  " Se você digitar uma letra MAIÚSCULA, a busca vira 'case-sensitive'

" =============================================================================
" --- PADRÃO DE TABULAÇÃO 42 (OBRIGATÓRIO) ---
" =============================================================================
set tabstop=4                  " Largura visual de 1 Tab é igual a 4 espaços
set shiftwidth=4               " Largura da indentação automática (comando > ou <)
set noexpandtab                " Garante o uso de TABS reais (Norma 42 proíbe espaços)
set copyindent                 " Copia o estilo de indentação da linha de cima
set preserveindent             " Mantém a estrutura de indentação ao salvar
set list listchars=trail:.,tab:>- " Mostra visualmente Tabs (>-) e espaços inúteis no fim (..)

" Garante que arquivos C sempre sigam as regras de Tab da 42
autocmd FileType c,cpp setlocal noexpandtab tabstop=4 shiftwidth=4

" =============================================================================
" --- GESTÃO DE ARQUIVOS TEMPORÁRIOS (SWAP/UNDO) ---
" =============================================================================
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set undofile                   " Salva o histórico de 'desfazer' (u) mesmo após fechar o Vim

" =============================================================================
" --- ATALHOS E COMANDOS PERSONALIZADOS ---
" =============================================================================

" Atalhos para mover blocos de texto para cima/baixo com Ctrl + J/K
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Pressione 'Ç' para contar linhas da função. O resultado fica no rodapé.
nnoremap Ç vi{:<C-u>echo "Linhas na função: " . (line("'>") - line("'<") + 1) <Bar> sleep 1 <Bar> echo "" <CR>

" Abre o terminal verticalmente à direita com o comando :T
command! T vertical terminal 

" Formatação automática de chaves { ao apertar Enter no modo Insert
inoremap {<CR> <CR>{<CR><BS><TAB><CR>}<ESC>ki<TAB><Del>

" Ativa o suporte a cores reais (importante para o Kitty)
set termguicolors
set background=dark

" Carrega o tema
colorscheme birds-of-paradise

" --- AJUSTES DE TRANSPARÊNCIA E CORES ---
" Estes comandos devem vir DEPOIS do colorscheme, pois o tema costuma resetar o fundo
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
