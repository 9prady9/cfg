-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
if not ok_lspconfig then
    print('"neovim/nvim-lspconfig" not available')
    return
end

local diagnostics = require("lspconfigs.diagnostics")
diagnostics.setup()

local setup_lsps = function()
    local lsp_handlers = require("lspconfigs.lsp_handlers")
    lsp_handlers.setup()

    local opts = {
        on_attach = function(client, bufnr)
            lsp_handlers.set_mappings(client, bufnr)
            lsp_handlers.set_autocmds(client, bufnr)
            lsp_handlers.set_additional_plugins(client, bufnr)
            diagnostics.set_mappings(client, bufnr)
        end,
        capabilities = lsp_handlers.capabilities,
    }

    for _, server in ipairs({
        "clangd",
        "cmake",
        "pyright",
        "rust_analyzer",
    }) do
        lspconfig[server].setup(opts)
    end
end

setup_lsps()
