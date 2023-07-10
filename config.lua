vim.opt.relativenumber = true

lvim.plugins = {
    { "RRethy/vim-hexokinase" },
    { "mg979/vim-visual-multi" },
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_set_keymap('n', 'gt', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gT', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gx', ':bd<CR>', { noremap = true, silent = true })
