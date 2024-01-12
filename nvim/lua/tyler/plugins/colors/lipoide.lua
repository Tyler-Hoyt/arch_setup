-- Sets colors to line numbers Above, Current and Below  in this order
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
    vim.api.nvim_set_hl(0, 'Comment', { fg='#51B3EC', italic=true })
end

return {
    -- Need this commit because otherwise the colorscheme is shit
    "FelipeIzolan/lipoide.nvim",
    commit = "657426e",
    lazy = false,
    priority = 1000,

    config = function()
        local lipoide = require("lipoide");
        lipoide.setup({
            transparent = false,
            transparent_column = false,
            comment_italic = true,
        });
    vim.cmd([[colorscheme lipoide]])
    LineNumberColors()
    end,
}
