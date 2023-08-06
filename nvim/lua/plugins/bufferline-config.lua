vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    numbers = function(opts)
      return string.format('%s·%s', opts.ordinal, opts.id)
    end,
    color_icons = true,
    -- separator_style = {"", ""},
    indicator = {
      -- icon = "",
      -- style = "underline",
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = " Files",
        text_align = "center"
      }
    },

    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end,
  },
 }
