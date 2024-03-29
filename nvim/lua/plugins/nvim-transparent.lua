require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- example of akinsho/nvim-bufferline.lua
    "BufferLineFill",
  },
  exclude = {
    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferLineSeparator",
    "BufferLineBufferSelected",
    "BufferLineBackground",
    "BufferLineIndicatorSelected",
  }, -- table: groups you don't want to clear
})
