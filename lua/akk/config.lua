-- AKK Personal Config

-- ...but use cindent for C-files
vim.api.nvim_create_autocmd({'BufEnter', 'BufRead'}, {
    pattern = { '*.h', '*.c' },
    callback = function()
    end
})

vim.opt.colorcolumn = '+80'

-- Set global identifier variables for 42 header
vim.g.user42 = 'elehtora'
vim.g.mail42 = 'elehtora@student.hive.fi'

-- Alias for recursive tag generation.
-- nvim_create_user_command('Ctags', '!ctags -R', {})
