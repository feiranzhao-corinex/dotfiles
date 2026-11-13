-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "» " }
vim.opt.tabstop = 8
vim.opt.expandtab = false
vim.g.snack_indent = false

vim.opt.background = "light"

vim.opt.clipboard = "unnamedplus"
