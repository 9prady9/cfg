-- 'onsails/lspkind-nvim'
local ok, lspkind = pcall(require, "lspkind")
if not ok then
    print('"onsails/lspkind" not available')
    return
end

lspkind.init({
    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'default',
})
