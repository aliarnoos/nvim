return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    'lua_ls',
                    'dockerls',
                    'harper_ls',
                    'html',
                    'eslint',
                    'jsonls',
                    'grammarly',
                    'intelephense',
                    'sqlls',
                    'zls'
                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.zls.setup({})
            lspconfig.intelephense.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'v', 'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
