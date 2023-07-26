vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true

lvim.plugins = {
    { "RRethy/vim-hexokinase" },
    { "mg979/vim-visual-multi" },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

            vim.opt.list = true
            -- vim.opt.listchars:append("space:⋅")
            -- vim.opt.listchars:append("eol:↴")

            require("indent_blankline").setup {
                space_char_blankline = " ",
                char_highlight_list = {
                  "IndentBlanklineIndent1",
                  "IndentBlanklineIndent2",
                  "IndentBlanklineIndent3",
                  "IndentBlanklineIndent4",
                  "IndentBlanklineIndent5",
                  "IndentBlanklineIndent6",
                },
            }
        end
  },
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_set_keymap('n', 'gt', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gT', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gx', ':bd<CR>', { noremap = true, silent = true })
