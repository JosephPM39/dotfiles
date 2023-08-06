lvim.leader = ","

-- LSP Docs
lvim.lsp.buffer_mappings.normal_mode['H'] = { vim.lsp.buf.hover, "Show documentation" }

-- Terminal Mappings
lvim.builtin.terminal.open_mapping = "<c-t>" -- Open

-- NvimTree
lvim.keys.normal_mode["<leader>t"] = ":NvimTreeToggle<CR>" -- Open / Close
lvim.keys.normal_mode["<leader>r"] = ":NvimTreeRefresh<CR>" -- Refresh
lvim.keys.normal_mode["<leader>ff"] = ":NvimTreeFindFile<CR>" -- Search File

-- Bufferline
lvim.keys.normal_mode["<leader>."] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<leader>,"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<leader>p"] = ":BufferLinePick<CR>"
lvim.keys.normal_mode["<leader>P"] = ":BufferLinePickClose<CR>"
