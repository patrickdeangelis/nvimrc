call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'APZelos/blamer.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let mapleader=" "
let g:blamer_enabled = 1
let g:ctrlp_user_command=['.git/']
let g:ctrlp_use_caching=0

if(has("termguicolors"))
	set termguicolors
endif

syntax enable
set guifont=DroidSansMono\ Nerd\ Font\ 11
set autoread
set number
set relativenumber
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set hidden
"" set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set scrolloff=8
set inccommand=split
set colorcolumn=80
set signcolumn=yes

colorscheme gruvbox

nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>
map <C-b> :NERDTreeToggle<CR>
nnoremap <leader>ps :Rg<space>
nnoremap <silent> <leader>t :wincmd n <bar> :wincmd J <bar> :resize 10 <bar> :set wfh <bar> :terminal<CR>
nnoremap <silent> <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>P :CtrlP ~<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
  tnoremap <leader><Esc> <Esc>
endif

