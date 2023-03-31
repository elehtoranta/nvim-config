-- AKK nvim options
local opt = vim.opt

-- Enable syntax highlighting.
vim.cmd('syn on')

-- Line numbering as relative to current line.
opt.number = true
opt.relativenumber = true

-- Always pad with <value> number of lines vertically.
opt.scrolloff = 10

-- Smart-ish language agnostic indenting behaviour.
opt.smartindent = true

-- Tabs expand to spaces
opt.expandtab = true

-- Set (auto)indenting step count as spaces (4 spaces as 1 tab).
opt.shiftwidth = 4

-- Number of spaces a <Tab> counts for in a file.
opt.tabstop = 4
opt.softtabstop = 4

-- Disable wrapping when lines clip over viewport.
opt.wrap = false

-- Highlight search matches. Clear highlight with :noh.
opt.hlsearch = true

-- (OFF) Ignore search case. Can be beneficial to switch off.
opt.ignorecase = true

-- VSplit to right side, HSplit below
opt.splitright = true
opt.splitbelow = true

-- Whitespace formatting. Helps noticing style errors. Multispace
-- added mainly to differentiate space indenting from tabs. (.py)
opt.list = true
opt.listchars = { trail = '~', tab = '>-', multispace = '---+', lead = ' ' }

-- Instead of closing buffers on switching from them, hide them.
opt.hidden = true

-- Write buffers on almost all changes in window state.
opt.autowriteall = true

-- If changes to a file have been made outside Vim, reread the file
-- automatically.
opt.autoread = true

-- Shorten the time of swap backups
opt.updatetime = 50

-- Length of wait between sequential map keystrokes
opt.timeout = true
opt.timeoutlen = 350

-- Completion popup menu (pum) max height
opt.pumheight = 10
