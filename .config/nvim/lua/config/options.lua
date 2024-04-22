local options = {
  clipboard = "unnamedplus",
  mouse = "a",
  writebackup = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")]])
vim.g.copilot_no_tab_map = true

vim.g.vimwiki_list = {
  {
    path = "~/Documents/knight-wiki",
    syntax = "markdown",
    ext = ".md",
  },
}
