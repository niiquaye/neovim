
call plug#begin('~/.config/nvim/plugged')

    " plugins will go here

    Plug 'gruvbox-community/gruvbox'

    Plug 'nvim-lua/plenary.nvim'
    " The main Telescope plugin
    Plug 'nvim-telescope/telescope.nvim'
    " An optional plugin recommended by Telescope docs
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

    Plug 'itchyny/lightline.vim'

    Plug 'lewis6991/gitsigns.nvim'

    Plug 'tpope/vim-fugitive'

    Plug 'neovim/nvim-lspconfig'

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

    " auto complete
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'onsails/lspkind-nvim'

call plug#end()

" enables syntax highlighting
syntax on

" Better colors
set termguicolors
colorscheme gruvbox
set background=dark

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase
set noshowmode

lua require('niiquaye/gitsigns')
lua require('niiquaye/lightline')
lua require('niiquaye/lsp')
lua require('niiquaye/treesitter')

nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-p> :vsplit<cr>

