local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/AppData/Local/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})



Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'mcchrish/zenbones.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'Yazeed1s/oh-lucy.nvim'

vim.call('plug#end')
