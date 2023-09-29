local telescope_builtin = require("telescope.builtin")

-- Search arbitrary string in all known files
vim.keymap.set('n', '<leader>ps', function()
    telescope_builtin.live_grep({ prompt_title = "Find string in buffers..." })
end, { desc = '[P]roject [S]earch text' })

-- Search current word in all known files
vim.keymap.set('n', '<leader>pw', function()
    local value_to_search = vim.fn.expand("<cword>")
    telescope_builtin.grep_string({
        prompt_title = "Files containing '" .. value_to_search .. "' word",
        search = value_to_search
    })
end, { desc = '[P]roject search current [W]ord' })

-- Open a preview window to select a given file
vim.keymap.set('n', '<C-p>', function()
    telescope_builtin.git_files({ prompt_title = "Find file in known git files" })
end, { desc = '[P]roject files' })
