local nnoremap = require("azenic.keymap").nnoremap
nnoremap ("<leader>fe", "<cmd>CocCommand flutter.emulators<CR>")
nnoremap ("<leader>ff", "<cmd>FZF<CR>")

--- Coc binds
--- Use <c-space> to trigger completion.
local keyset = vim.keymap.set
-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Moving between windows
keyset("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
keyset("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
keyset("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
keyset("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})

