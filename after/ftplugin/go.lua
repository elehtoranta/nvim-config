vim.api.nvim_create_autocmd({"BufWrite"}, {
    pattern = {"*.go"},
    callback = function()
        vim.lsp.buf.format()
    end
})
