return {
    "windwp/nvim-ts-autotag",

    config = function()
        local autotag = require("nvim-ts-autotag")
        -- configure autotag
        autotag.setup({
            -- use default values
            filetypes = {
                "html",
                "javascript",
                "typescript",
                "svelte",
            }
        })
    end
}
