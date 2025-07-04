local lsp_zero = require('lsp-zero')

-- LSP Keymaps on Attach
lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Mason Setup
require('mason').setup({})

-- Mason-LSPConfig Setup (✅ Correct LSP Names)
-- use the below to find servea
-- :lua print(vim.inspect(require("mason-lspconfig").get_available_servers())) 
require('mason-lspconfig').setup({
    ensure_installed = {
        'ts_ls',       -- TypeScript/JavaScript
        'eslint',         -- ESLint
        'lua_ls',         -- Lua
        'rust_analyzer',  -- Rust
        'pyright',        -- Python
        'clangd',         -- C/C++
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

-- nvim-cmp Setup (Autocompletion)
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-p>']     = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>']     = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>']     = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = {
        { name = 'nvim_lsp' }, -- LSP Completions
        { name = 'luasnip' },  -- Snippets
        { name = 'buffer' },   -- Text in open buffers
        { name = 'path' },     -- File paths
    },
})

