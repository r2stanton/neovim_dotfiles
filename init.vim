let mapleader = " "

" Split nav
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set encoding=utf-8
set fileformat=unix

set number relativenumber

" Syntax highlighting
syntax enable 

" These are annoying, but turn this off if you want it
set noswapfile 

set scrolloff=7
set backspace=indent,eol,start	

" Tabs/spacing/indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set colorcolumn=80



call plug#begin('~/.vim/plugged/')

"# Colorschemes
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'kyazdani42/blue-moon'

"# Nerd
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

"# Status bar/airline themes.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"# Don't really like much
Plug 'jiangmiao/auto-pairs'

"# ? 
Plug 'norcalli/nvim-colorizer.lua'

"# Copilot
Plug 'github/copilot.vim'

"Plug 'sirver/ultisnips'


call plug#end()
set background=dark
"colorscheme gruvbox-material
"
"Catpuccin flavors
colorscheme catppuccin " -latte, -frappe, -macchiato, -mocha


if (has("termguicolors"))
    set termguicolors
endif 

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <leader><tab> :NERDTreeToggle<CR>
nmap <leader>l :bd <CR>

" Nerdtree alternative, but much worse.
"inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>
"nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>


" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>


