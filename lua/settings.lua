local vim = vim

vim.syntax = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.scrolloff = 5

vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = false

vim.o.splitbelow = true

vim.o.clipboard = "unnamedplus"

vim.o.list = true
vim.opt.listchars = { tab = '>-', trail = '~', leadmultispace = '-·-·' }

vim.o.linebreak = true

vim.g.netrw_liststyle = 3
