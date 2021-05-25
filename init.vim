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
Plug 'vimsence/vimsence'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader=" "
let g:blamer_enabled = 1
let g:ctrlp_user_command=['.git/']

" Disable numbers at terminal
let g:ctrlp_use_caching=0
autocmd TermOpen * setlocal nonumber norelativenumber

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

map <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <leader>h :wincmd h <CR>
nnoremap <silent> <leader>j :wincmd j <CR>
nnoremap <silent> <leader>k :wincmd k <CR>
nnoremap <silent> <leader>l :wincmd l <CR>
nnoremap <silent> <leader>t :wincmd n <bar> :wincmd J <bar> :resize 10 <bar> :set wfh <bar> :terminal<CR>
nnoremap <silent> <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
" DEPRECATED, migrating to FZF - nnoremap <silent> <leader>P :CtrlP ~<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
" FZF key remap
" find files
nnoremap <silent> <C-f> :Files<CR>
" Find in files
nnoremap <silent> <Leader>f :Rg<CR>

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
  tnoremap <leader><Esc> <Esc>
endif

let g:vimsence_small_text = 'Vim'
let g:vimsence_small_image = 'vim'
let g:vimsence_editing_details = 'Editing'
let g:vimsence_editing_state = 'Working on'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
" FZF
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '10' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

