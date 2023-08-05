vim.opt.relativenumber = true
lvim.colorscheme = "lunar"

vim.opt.list = true

lvim.plugins = {
    { "RRethy/vim-hexokinase" },
    { "mg979/vim-visual-multi" },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd [[highlight IndentBlanklineIndent1 guifg=#404040 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent2 guifg=#FF8C00 gui=nocombine]]

            vim.opt.list = true
            vim.opt.listchars:append "space:⋅"
            vim.opt.listchars:append "eol:↴"

            require("indent_blankline").setup {
                char = "|",
                space_char_blankline = " ",
                char_highlight_list = {
                    "IndentBlanklineIndent1",
                    "IndentBlanklineIndent2",
                },
            }
        end
    },
    { "tpope/vim-surround" },
    { 'ggandor/lightspeed.nvim' }
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_set_keymap('n', 'gt', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gT', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gx', ':bd<CR>', { noremap = true, silent = true })
