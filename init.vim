set nocompatible
filetype off

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'YoEight/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'YoEight/gruvbox'
Plug 'YoEight/vim-one'
" Plug 'jiangmiao/auto-pairs'
" Plug 'shinchu/lightline-gruvbox.vim'
Plug 'YoEight/haskell-vim'
Plug 'YoEight/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'tomtom/tlib_vim'
" Plug 'scrooloose/nerdtree'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'joshdick/onedark.vim'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Raimondi/delimitMate'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

source ~/.config/nvim/nvimrc.bepo

call plug#end()

syntax on
filetype plugin indent on

set encoding=utf8
scriptencoding utf-8

set directory=~/.config/nvim/backup
set backupdir=~/.config/nvim/backup

set number
set nowrap
set noshowmode
set showmatch
" set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set laststatus=2
set expandtab
set incsearch
set mouse=a
set history=1000
set ruler
set clipboard+=unnamedplus
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox,.stack-work,*/target
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set t_Co=256
set cmdheight=1
set termguicolors
set background=dark
set rtp+=/usr/local/opt/fzf
set cursorline
" Required for operations modifying multiple buffers like rename.
set hidden

" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$'
"   \ }
" quantum configuration
" let g:quantum_italics=1
" let g:quantum_black=1
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" let g:lightline = {
"       \ 'colorscheme': 'gruvbox',
"       \ }

" gruvbox configuration
let g:gruvbox_italic = 1
let g:gruvbox_hls_cursor = 'purple'
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 1

"let g:airline_symbols.space = "\ua0"
let g:one_allow_italics = 1
colorscheme one " gruvbox

" Markdown configuration
let g:vim_markdown_folding_disabled = 1

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

"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"    \ 'javascript': ['javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"    \ }
" Useful remapping for third-party plugin.
" noremap ,n :NERDTreeToggle<CR>

" autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
" autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

" snipMate remapping.
:imap <C-e> <Plug>snipMateNextOrTrigger

" CtrlP remapping
noremap ,b :Buffers<CR>
noremap ,f :GFiles<CR>
noremap ,gf :Files<CR>
noremap ,gd :GFiles?<CR>
noremap ,t :Tags<CR>

"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Remapping <esc> in insert mode because it's really not practical on those touch bar macbook
" pro.
inoremap <Tab> <esc>

