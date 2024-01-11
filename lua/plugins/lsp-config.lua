return {
    -- Mason for LSP
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup({
                ensure_installed = { "prettier", "prettierd", "clangd", "cpplint", "pyright" }
            })
        end,
    },

    -- Connects Mason to Neovim config
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "pyright", "eslint" , "tsserver"}
            })
        end,
    },

    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            -- Setup for lua_ls and tsserver
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            --lspconfig.clangd.setup({})
            lspconfig.clangd.setup({
                cmd = { "clangd", "--background-index" },     -- example with some flags
                filetypes = { "c", "cpp", "objc", "objcpp" }, -- specify file types if needed
            })
            lspconfig.pyright.setup({
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "basic",
                        },
                    },
                },
            })
            lspconfig.eslint.setup({})
            -- Set up keybindings for LSP
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
