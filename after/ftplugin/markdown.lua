local vim = vim

-- Table format
vim.keymap.set('v', '<leader>tf', ":'<,'>!pandoc -t commonmark_x<CR>")

vim.o.shiftwidth = 2
