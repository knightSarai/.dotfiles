-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", opts)
keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- vimwiki
keymap.set("", "<leader>ww", "<cmd>VimwikiIndex<CR>", opts)

-- AutoSave
keymap.set("n", "<leader>n", ":ASToggle<CR>", {})
