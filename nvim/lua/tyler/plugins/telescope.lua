return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        require("telescope").load_extension("flutter")

        telescope.setup({
            defaults = {
                prompt_prefix = "   ",
                selection_caret = "  ",
                entry_prefix = "   ",
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev results
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                },
                borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                dynamic_preview_title = true,
                hl_result_eol = true,
                file_ignore_patterns = {
                  ".git/",
                  "target/",
                  "docs/",
                  "vendor/*",
                  "%.lock",
                  "__pycache__/*",
                  "%.sqlite3",
                  "%.ipynb",
                  "node_modules/*",
                  -- "%.jpg",
                  -- "%.jpeg",
                  -- "%.png",
                  "%.svg",
                  "%.otf",
                  "%.ttf",
                  "%.webp",
                  ".dart_tool/",
                  ".github/",
                  ".gradle/",
                  ".idea/",
                  ".settings/",
                  ".vscode/",
                  "__pycache__/",
                  "build/",
                  "gradle/",
                  "node_modules/",
                  "%.pdb",
                  "%.dll",
                  "%.class",
                  "%.exe",
                  "%.cache",
                  "%.ico",
                  "%.pdf",
                  "%.dylib",
                  "%.jar",
                  "%.docx",
                  "%.met",
                  "smalljre_*/*",
                  ".vale/",
                  "%.burp",
                  "%.mp4",
                  "%.mkv",
                  "%.rar",
                  "%.zip",
                  "%.7z",
                  "%.tar",
                  "%.bz2",
                  "%.epub",
                  "%.flac",
                  "%.tar.gz",
                },
                results_title = "",
                layout_config = {
                  horizontal = {
                    preview_width = 0.55,
                    results_width = 0.8,
                  },
                  vertical = {
                    mirror = false,
                  },
                  width = 0.87,
                  height = 0.80,
                  preview_cutoff = 120,
                },
            }
        })
        telescope.load_extension("fzf");

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find buffers" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols ignore_symbols=variable<cr>", { desc = "Find document symbols" })
        keymap.set("n", "<leader>f$", "<cmd>Telescope colorscheme<cr>", { desc = "Change color scheme" })

    end
}
