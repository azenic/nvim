local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/AppData/Local/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})

Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'
Plug 'dart-lang/dart-vim-plugin'

-- File tree
Plug 'nvim-tree/nvim-tree.lua'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'

-- Theme
Plug 'folke/tokyonight.nvim'
Plug 'Yazeed1s/oh-lucy.nvim'

-- Bottom status bar
Plug 'feline-nvim/feline.nvim'
Plug 'lewis6991/gitsigns.nvim'

-- Git integration
Plug 'lewis6991/gitsigns.nvim'

vim.call('plug#end')
