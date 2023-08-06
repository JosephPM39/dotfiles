--[[local null_ls = require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.completion.spell,
    },
})--]]

local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local actions = null_ls.builtins.code_actions

local sources = {
  formatting.eslint,
  formatting.stylua,
  formatting.prettier,
  diagnostics.eslint_d,
  completion.spell,
  actions.eslint_d
}

null_ls.setup({
  sources = sources
})

local defaults = {
    cmd = { "nvim" },
    debounce = 250,
    debug = false,
    default_timeout = 5000,
    diagnostics_format = "#{m}",
    fallback_severity = vim.diagnostic.severity.ERROR,
    log_level = "warn",
    notify_format = "[null-ls] %s",
    on_attach = nil,
    on_init = nil,
    on_exit = nil,
    -- root_dir = u.root_pattern(".null-ls-root", "Makefile", ".git"),
    -- sources = nil,
    update_in_insert = false,
}
