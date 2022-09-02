require "plugins"
require "baseconfig"
require "keybindings"

require "lsp/setup"
require "plugin-config/nvim-tree"
require "plugin-config/nvim-treesitter"
require "plugin-config/bufferline"
require "plugin-config/lualine"

vim.cmd [[colorscheme gruvbox]]
-- vim.cmd [[colorscheme zephyr]]
-- vim.cmd [[colorscheme nord]]

vim.background = dark
