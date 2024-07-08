:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'pocco81/auto-save.nvim' " Auto Save
Plug 'sebdah/vim-delve' 
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'romgrk/barbar.nvim'
Plug 'github/copilot.vim'
Plug 'justinmk/vim-sneak'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'williamboman/mason.nvim'    
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'windwp/nvim-autopairs'

" Language specific
Plug 'simrat39/rust-tools.nvim'
Plug 'crispgm/nvim-go'
Plug 'pest-parser/pest.vim'

call plug#end()

set encoding=UTF-8

lua require('kiran')

nnoremap <C-t> :NvimTreeToggle<CR>

nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

:colorscheme jellybeans

tnoremap <Esc> <C-\><C-n>
" move lines up or down, in visual or normal mode
xnoremap <A-Up>  :m-2<CR>gv=gv
xnoremap <A-Down> :m'>+<CR>gv=gv
nnoremap <A-Up>  :<C-u>m-2<CR>==
nnoremap <A-Down> :<C-u>m+<CR>==

let g:airline_powerline_fonts = 1

:n ~/.config/nvim/readme.md
