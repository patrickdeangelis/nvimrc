call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'APZelos/blamer.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'airblade/vim-gitgutter'
call plug#end()

let mapleader=" "
let g:blamer_enabled = 1

" Disable numbers at terminal
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
set background=dark

colorscheme gruvbox 
map <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <leader>h :wincmd h <CR>
nnoremap <silent> <leader>j :wincmd j <CR>
nnoremap <silent> <leader>k :wincmd k <CR>
nnoremap <silent> <leader>l :wincmd l <CR>
nnoremap <silent> <leader>t :wincmd n <bar> :wincmd J <bar> :resize 10 <bar> :set wfh <bar> :terminal<CR>
nnoremap <silent> <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <C-n> :tabnew <CR>

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

" Gruvbox theme
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = '0'

" Gitgutter
let g:gitgutter_set_sign_backgrounds = 0
let g:gitgutter_sign_removed = '-'
highlight GitGutterAdd	  guibg=#aeb126	ctermbg=2 guifg=#2d2910 ctermfg=2
highlight GitGutterChange guibg=#84b972 ctermbg=3 guifg=#2d2910 ctermfg=3
highlight GitGutterDelete guibg=#ff2222 ctermbg=1 guifg=#2d2910 ctermfg=1

" FZF
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '10' }

" Airline
set ttimeoutlen=50
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


" LSP
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" LSP auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

" LSP servers
lua require'lspconfig'.jedi_language_server.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.jsonls.setup { on_attach=require'completion'.on_attach }
lua require'lspconfig'.gopls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.dockerls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.cmake.setup{ on_attach=require'completion'.on_attach }
