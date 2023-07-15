-- Highlight lines over XX cols.
local line_lengths = vim.api.nvim_create_augroup("line_length", {clear = true})
vim.api.nvim_create_autocmd("BufWinEnter", {
  -- Python: PEP8
  group = line_lengths,
  pattern = {"*.py"},
  command = "let w:m1=matchadd('ErrorMsg', '\\%>79v.\\+', -1)"
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  -- C++: Google, C: Linux Kernel, Rust: Rust Foundation
  group = line_lengths,
  pattern = {"*.cpp", "*.c", "*.rs"},
  command = "let w:m1=matchadd('ErrorMsg', '\\%>80v.\\+', -1)"
})
