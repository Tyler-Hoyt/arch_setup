vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>q", ":bd<CR>")
vim.keymap.set("n", "<leader>o", ":Oil<CR>")
vim.api.nvim_set_keymap("n", "S", "cc", { noremap = true, silent = true })

-- LaTeX render
vim.keymap.set("n", "<leader>p", ':lua require("nabla").popup()<CR>')
