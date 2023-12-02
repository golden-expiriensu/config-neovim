-- Enable autoformatting on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
