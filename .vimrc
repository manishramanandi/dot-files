" ~/.vimrc

" General
set nocompatible
set number
set relativenumber
set clipboard=unnamedplus
set mouse=a
set background=dark
syntax enable
filetype plugin indent on

" Toggle NERDTree with <leader>e
nnoremap <leader>e :NERDTreeToggle<CR>



" Plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Autocompletion and LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Linting
Plug 'dense-analysis/ale'

" NERDTree file explorer
Plug 'preservim/nerdtree'

" Emmet for HTML boilerplate/snippets
Plug 'mattn/emmet-vim'

" Status line
Plug 'itchyny/lightline.vim'

" CtrlP fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Snippets
Plug 'honza/vim-snippets'

" Go language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vimsence/vimsence'

" Plug 'github/copilot.vim'


call plug#end()


" Use Tab and Shift-Tab to navigate completion menu
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use Enter to confirm completion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

