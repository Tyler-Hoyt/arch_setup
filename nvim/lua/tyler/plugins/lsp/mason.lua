return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- enalbe mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                }
            }
        })
        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "html",
                "lua_ls",
                "clangd",
                "cmake",
                "tsserver",
                "csharp_ls",
                "tailwindcss",
                "svelte",
                "sqlls"
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })
    end,
}