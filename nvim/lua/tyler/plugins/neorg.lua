return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.integrations.treesitter"] = {},
          ["core.esupports.hop"] = {}, -- Hop to links
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                advalg = "~/notes/advalg",
                database = "~/notes/database",
                jazz = "~/notes/jazz",
              },
              index = "index.norg",
            },
          },
          ["core.completion"] = {
              config = {
                  engine = "nvim-cmp",
              },
          },
        },
      }
    end,
}
