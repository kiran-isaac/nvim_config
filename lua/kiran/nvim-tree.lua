-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

--[[ OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
		highlight_git = true,
  },
	git = {
		enable = true,
	},
  filters = {
    dotfiles = false,
		git_ignored = false
  },
})
]]
require("nvim-tree").setup({
  git = {
    enable = true,              -- turn on git integration
    show_on_dirs = true,
    show_on_open_dirs = true,
    timeout = 400,
  },
  filters = {
    git_ignored = false,        -- show files ignored by .gitignore
    -- dotfiles = false,        -- optional: show dotfiles too
  },
  renderer = {
    highlight_git = true,       -- color names by git status
    icons = { show = { git = true } }, -- show git status icons
  },
  filesystem_watchers = {
    enable = true,              -- keeps view in sync as files change
  },
})

