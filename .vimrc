" ===========================================
" General Settings
" ===========================================

" Use dark background (but transparent)
set background=dark
highlight Normal ctermbg=none guibg=NONE

" Enable syntax highlighting and plugins
syntax enable
filetype plugin indent on

" Enable 24-bit (true-color) mode (if terminal supports)
if has("termguicolors")
  set termguicolors
endif

" Line numbering
set number
set relativenumber

" Show matching parentheses and brackets
set showmatch

" Enable incremental search with highlight
set incsearch
set hlsearch

" Set tab and indentation preferences for C/C++
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Use system clipboard (optional)
set clipboard=unnamedplus

" Enable mouse support (optional)
set mouse=a

" ===========================================
" Cursor Shape Fix for Normal & Insert Modes
" ===========================================

if exists('$VIM')
    let &t_SI = "\e[5 q"   " Thin I-beam cursor in Insert mode
    let &t_EI = "\e[2 q"   " Block cursor in Normal mode
endif

" ===========================================
" Autocompletion
" ===========================================

" Enable omnifunc completion for C/C++
autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete

" Disable coc.nvim automatic language completion popup
" But keep coc.nvim installed to avoid errors with plugins relying on it
let g:coc_global_extensions = []

" Disable completion auto-trigger popup
let g:coc_enable_locationlist = 0
let g:coc_snippet_next = ''

" Disable automatic suggestions
autocmd FileType * let b:coc_suggest_disable = 1

" ===========================================
" Key Mappings
" ===========================================

" Set leader key to space
let mapleader = " "

" Use Ctrl + Space for basic omni completion only
inoremap <C-Space> <C-x><C-o>

" Toggle NERDTree with <leader>e
nnoremap <leader>e :NERDTreeToggle<CR>

" ===========================================
" Plugins (If You Use Vim-Plug)
" ===========================================

" Install Vim-Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" coc.nvim core plugin (no language extensions)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax checking and linting
Plug 'dense-analysis/ale'


" NERDTree file explorer
Plug 'preservim/nerdtree'

" Autopairs plugin for automatic closing of brackets, quotes etc.
Plug 'jiangmiao/auto-pairs'

call plug#end()

" ===========================================
" Final Notes
" ===========================================
" To install plugins, open Vim and run:
" :PlugInstall
"
" Use <C-Space> for omnifunc completion only
" Use <leader> + e (space + e) to toggle NERDTree

" Auto-pairs works out of the box; no extra config needed
