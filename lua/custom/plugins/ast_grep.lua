return {
  "Marskey/telescope-sg",
  config = function()
    require('telescope').load_extension('ast_grep')
    require('telescope').setup({
      extensions = {
        ast_grep = {
          command = {
            "ast-grep",
            "--json=stream",
            "-p",
          },                       -- must have --json and -p
          grep_open_files = false, -- search in opened files
          lang = nil,              -- string value, specify language for ast-grep `nil` for default
        }
      }
    })
  end,
}
