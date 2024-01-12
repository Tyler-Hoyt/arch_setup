return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        local treesitter = require('nvim-treesitter.configs')
        treesitter.setup({
            ensure_installed = {
                "cpp",
                "lua",
                "javascript",
                "dart",
                "html",
                "typescript",
                "svelte",
                "latex"
            },
            highlight = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
        })
    end
}
