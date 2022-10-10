--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
--require('plugins/null-ls')
--require('plugins/nvim-lint')
require('plugins/ale')
require('plugins/bufferline-config')
require('plugins/nvim-transparent')
require('plugins/nvim-notify')

-- Personal settings
-- vim.wo.number = true
-- vim.wo.relativenumber = true
