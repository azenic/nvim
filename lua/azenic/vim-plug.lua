local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/AppData/Local/nvim/plugged')

Plug ('scrooloose/nerdtree', {on = 'NERDTreeToggle'})
Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

Plug 'tpope/vim-projectionist'
Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'jiangmiao/auto-pairs'

Plug 'dart-lang/dart-vim-plugin'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'folke/tokyonight.nvim'
vim.call('plug#end')
