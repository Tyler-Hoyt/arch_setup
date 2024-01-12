return {
    "tpope/vim-fugitive",
    keys = {
        {'<leader>gs', function() vim.cmd('vert Git') end, desc = 'git fugitive'},
        {'<leader>gd', ':Gvdiffsplit<cr>', desc = 'git diff split'}
    }
}
