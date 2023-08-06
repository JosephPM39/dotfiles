-- Disable the builtin jdtls support 
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
