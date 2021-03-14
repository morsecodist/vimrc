set number
set relativenumber
set noswapfile
set tabstop=4 softtabstop=0 expandtab shiftwidth=2
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

call plug#end()

let ayucolor="dark"
colorscheme nord

syntax enable
filetype plugin indent on

set splitbelow

au BufRead,BufNewFile *.hcl set filetype=terraform

let g:hardtime_default_on = 1

