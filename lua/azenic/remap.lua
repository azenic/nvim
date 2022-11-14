local nnoremap = require("azenic.keymap").nnoremap
nnoremap ("<leader>fe", "<cmd>CocCommand flutter.emulators<CR>")
nnoremap ("<leader>ff", "<cmd>FZF<CR>")
nnoremap ("<leader>b", "<cmd>Neotree reveal<CR>")
--- Coc binds
--- Use <c-space> to trigger completion.
local keyset = vim.keymap.set
-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, expr = true})
-- Moving between windows
keyset("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
keyset("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
keyset("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
keyset("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})


