set number
set relativenumber
set noswapfile
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
set nobackup
set hidden
set ignorecase smartcase
set termguicolors


let g:coc_global_extensions = [
      \ 'coc-go',
      \ 'coc-pyright',
      \ 'coc-rust-analyzer',
      \ 'coc-tsserver',
      \ 'coc-solargraph',
      \ ]

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}
" FZF requires ripgrep: sudo apt-get install ripgrep
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/gofmt.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'vimlab/split-term.vim'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-packer'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'broadinstitute/vim-wdl'
Plug 'arcticicestudio/nord-vim'
Plug 'takac/vim-hardtime'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
" required for vim-textobj-indent
Plug 'kana/vim-textobj-user'
" ai
Plug 'kana/vim-textobj-indent'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

let ayucolor="mirage"
colorscheme ayu

syntax enable
filetype plugin indent on

set splitbelow

au BufRead,BufNewFile *.hcl set filetype=terraform

" let g:hardtime_default_on = 1
let g:vim_markdown_folding_disabled = 1

