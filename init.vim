syntax on
filetype plugin indent on

set directory=~/.config/nvim/backup
set backupdir=~/.config/nvim/backup

set nocompatible
set number
set nowrap
set showmode
set showmatch
" set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set ruler
set clipboard+=unnamedplus

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox,.stack-work
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1

set termguicolors

execute pathogen#infect()

" quantum configuration
let g:quantum_italics=1
let g:quantum_black=1
let g:airline_theme='quantum'

" gruvbox configuration
let g:gruvbox_italic = 1
let g:gruvbox_hls_cursor = 'purple'
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 1

set background=dark
colorscheme quantum

if has('gui_running')
 set guioptions-=m " remove menu bar
 set guioptions-=T " remove toolbar
 set guioptions-=r " remove right-hand scroll bar
 set guioptions-=L " remove left-hand scroll bar
 " set guifont=PragmataPro\ Mono\ 14 -- It seems it doesn't work in OSX
endif

" NERDTree settings.
let NERDTreeShowHidden=1

" Haskell configuration
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_case = 4
let g:haskell_indent_disable = 1

" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0

" <> en direct
" ————————————
noremap « <
noremap » >

" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>

" Remapping <esc> in insert mode because it's really not practical on those touch bar macbook
" pro. It will only work on GUI vim.
inoremap <Tab> <esc>

" Useful remapping for third-party plugin.
noremap ,n :NERDTreeToggle<CR>

" snipMate remapping.
:imap <C-e> <Plug>snipMateNextOrTrigger

" CtrlP remapping
noremap ,f :CtrlP<CR>
noremap ,t :CtrlPTag<CR>

