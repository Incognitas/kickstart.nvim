vim.opt.relativenumber = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=0
vim.opt.smartindent = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
