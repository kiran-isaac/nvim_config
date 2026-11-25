require("nvim-autopairs").setup({})
-- Treesitter Plugin Setup (nvim-treesitter `main` branch API)
require('nvim-treesitter').install { "lua", "rust", "toml" }

-- Highlighting is provided by Neovim itself; start it for any filetype
-- that has a parser installed (pcall skips filetypes without one).
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
