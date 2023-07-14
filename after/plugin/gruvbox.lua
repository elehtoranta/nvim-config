require("gruvbox").setup({
 italic = {
   strings = false,
 },
})

vim.o.background = 'dark'
vim.cmd("colorscheme gruvbox")
vim.cmd([[:highlight ColorColumn ctermbg=0 guibg=#313313]])
