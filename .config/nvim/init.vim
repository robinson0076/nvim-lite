set number
set signcolumn=no
set tabstop=4
set incsearch
set noshowmode
set cursorline
set hlsearch
filetype indent on
filetype plugin on
syntax on

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

lua << EOF
require("nvim-autopairs").setup {}
require("nvim-ts-autotag").setup()
require("lualine").setup { options = { theme = 'gruvbox-material' } }
EOF
