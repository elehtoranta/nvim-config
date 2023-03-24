-- AKK nvim options

-- Enable syntax highlighting.
vim.cmd('syn on')

-- Line numbering as relative to current line.
vim.opt.number = true
vim.opt.relativenumber = true

-- Always pad with <value> number of lines vertically.
vim.opt.scrolloff = 10

-- Smart-ish language agnostic indenting behaviour.
vim.opt.smartindent = true

-- Tabs expand to spaces
vim.opt.expandtab = true

-- Set (auto)indenting step count as spaces (4 spaces as 1 tab).
vim.opt.shiftwidth = 4

-- Number of spaces a <Tab> counts for in a file.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Disable wrapping when lines clip over viewport.
vim.opt.wrap = false

-- Highlight search matches. Clear highlight with :noh.
vim.opt.hlsearch = true

-- (OFF) Ignore search case. Can be beneficial to switch off.
vim.opt.ignorecase = true

-- VSplit to right side, HSplit below
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Whitespace formatting. Helps noticing style errors. Multispace
-- added mainly to differentiate space indenting from tabs.
vim.opt.list = true
vim.opt.listchars = { trail = '~', tab = '>-', multispace = '---+' }

-- Instead of closing buffers on switching from them, hide them.
vim.opt.hidden = true

-- Write buffers on almost all changes in window state.
vim.opt.autowriteall = true

-- If changes to a file have been made outside Vim, reread the file
-- automatically.
vim.opt.autoread = true

-- Suppress stupid press-enter-prompts.
vim.opt.shortmess = 'at'
