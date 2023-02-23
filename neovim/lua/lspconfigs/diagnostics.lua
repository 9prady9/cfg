local M = {}

M.setup = function()
    local signs = {
        { name = "DiagnosticSignError", text = "" },
        { name = "DiagnosticSignWarn", text = "" },
        { name = "DiagnosticSignHint", text = "💡" },
        { name = "DiagnosticSignInfo", text = "" },
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(
            sign.name,
            { texthl = sign.name, text = sign.text, numhl = "" }
        )
    end

    -- Neovim has a built in diagnostic abstraction. We're only setting it up
    -- here
    local diagnostic_config = {
        update_in_insert = false,
        underline = true,
        virtual_text = {
            severity = vim.diagnostic.severity.ERROR,
            source = true,
            spacing = 10,
        },
        -- show signs
        signs = {
            active = signs,
        },
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    }

    vim.diagnostic.config(diagnostic_config)
end

M.set_mappings = function(_, bufnr)
    vim.keymap.set({ "n" }, "]d", vim.diagnostic.goto_next, { buffer = bufnr })
    vim.keymap.set({ "n" }, "[d", vim.diagnostic.goto_prev, { buffer = bufnr })
    local ok_telescope, telescope_builtin = pcall(require, "telescope.builtin")
    if ok_telescope then
        vim.keymap.set(
            { "n" },
            "<leader>df",
            "<Cmd>Telescope diagnostics<Cr>",
            { buffer = bufnr }
        )
        vim.keymap.set({ "n" }, "<leader>lds", function()
            telescope_builtin.lsp_document_symbols()
        end, { buffer = bufnr })
        vim.keymap.set({ "n" }, "<leader>ldw", function()
            telescope_builtin.lsp_dynamic_workspace_symbols()
        end, { buffer = bufnr })
    end
end

return M
