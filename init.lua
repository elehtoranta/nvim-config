vim.syntax = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 5
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.splitbelow = true
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.opt.listchars = { tab = '>-', trail = '~', leadmultispace = '-·-·' }

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>h', function ()
	vim.o.hlsearch = vim.o.hlsearch == false and true or false
end)
vim.keymap.set('n', '<leader>te', ':tabedit<CR>')

vim.keymap.set('n', '<leader><leader>', ':source %<CR>') -- When building nvim config
vim.cmd('colorscheme retrobox')

-- C LSP
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
	pattern = { '*.c', '*.h' },
	callback = function()
		vim.lsp.start({
			name = 'clangd',
			cmd = {'/usr/bin/clangd'},
			root_dir = vim.fs.root(0, { '.gitignore', 'Makefile' })
		})
	end
})

-- Experimental
function lsp_factory(pattern, name, cmd, root_files)
	vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
		pattern = pattern,
		callback = function()
			vim.lsp.start({
				name = name,
				cmd = cmd,
				root_dir = vim.fs.root(0, root_files)
			})
		end
	})
end
