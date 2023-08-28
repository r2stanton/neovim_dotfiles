let mapleader = " "
set mouse=

" Plugins
call plug#begin('~/.vim/plugged/')
"# Colorschemes
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'kyazdani42/blue-moon'
Plug 'pineapplegiant/spaceduck'
Plug 'vim-scripts/vim_colors'
Plug 'vim-scripts/buttercream.vim'
Plug 'sainnhe/everforest'
Plug 'raphamorim/lucario'

" Nerd
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

" Status bar/airline themes.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Don't really like much
Plug 'jiangmiao/auto-pairs'

" 
Plug 'norcalli/nvim-colorizer.lua'

" Copilot
Plug 'github/copilot.vim'

" LaTeX
Plug 'lervag/vimtex'

"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'christoomey/vim-tmux-navigator'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jayp0521/mason-null-ls.nvim'


call plug#end()

set background=dark
"colorscheme gruvbox-material
"colorscheme catppuccin
"colorscheme pyte
"colorscheme buttercream
"colorscheme everforest
colorscheme lucario
"colorscheme kanagawa

" vimtex
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'
"let g:vimtex_compiler_method = 'pdflatex'
"let g:vimtex_compiler_method = 'latexrun'


" Change the path here to wherever you put your skeleton files.
if has ("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/.config/nvim/Templates/article.tex
    augroup END
endif

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


" LSP
"lua <<EOF
"require'lspconfig'.pyright.setup{}
"EOF

" MACROS
let @p = ':w:!python %'



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
    nmap <leader>- :bd <CR>

    " Nerdtree alternative, but much worse.
    "inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>
    "nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>


    " Tabs
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#fnamemode=':t'
    nmap <leader>1 :bp<CR>
    nmap <leader>2 :bn<CR>
