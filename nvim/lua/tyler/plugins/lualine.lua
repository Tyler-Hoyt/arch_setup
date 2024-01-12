return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local lualine = require("lualine")
        -- configure lualine
        lualine.setup({
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = '|',
                disabled_filetypes = {
                  statusline = {},
                  winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                  statusline = 1000,
                  tabline = 1000,
                  winbar = 1000,
                }
              },
              sections = {
                lualine_a = {
                    { 'mode', right_padding = 2 },
                },
                lualine_b = {'filename', 'branch'},
                lualine_c = {},
                lualine_x = {'diff', 'diagnostic', 'filetype'},
                lualine_y = {},
                lualine_z = {
                    { 'location', left_padding = 2 },
                }
              },
              inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
              },
              tabline = {},
              winbar = {},
              inactive_winbar = {},
              extensions = {}
        })
    end
}
