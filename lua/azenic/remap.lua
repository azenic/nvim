vim.g.mapleader = " "

-- hotkey for vim.cmd.Ex 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- toggle nvim tree visibility
vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", {noremap = true})

-- move highlighted lines up down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
-- have cursor in place while using J
vim.keymap.set("n", "J", "mzJ`z")

-- have cursor in the middle while half way jumping C-d-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- leader y to yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- leader d to delete to system clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>D", "\"_D")

-- unbinds the repeat latest register n number of times command
vim.keymap.set("n", "Q", "<nop>")
-- enable if using tmux
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- quick fix navigation remaps
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
