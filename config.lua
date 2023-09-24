require("emmet").config()
require("telescopeTheme").config()
require("lualineTheme").config()

vim.opt.relativenumber = true
lvim.colorscheme = "lunar"

vim.opt.colorcolumn = "80"
vim.opt.list = true
vim.cmd(
    'autocmd ColorScheme * highlight ColorColumn guibg=#15161f ctermbg=235'
)

lvim.plugins = {
    { "RRethy/vim-hexokinase" },
    { "mg979/vim-visual-multi" },
    {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {
                default_mappings = true;
            }
        end
    },
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
    { 'ggandor/lightspeed.nvim' },
    { 'christoomey/vim-tmux-navigator' },
    {
        'AckslD/nvim-trevJ.lua',
        config = 'require("trevj").setup()',
        init = function()
            vim.keymap.set('n', '<leader>j', function()
                require('trevj').format_at_cursor()
            end)
        end,
    },
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_set_keymap('n', 'gt', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gT', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gx', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {})

lvim.builtin.alpha.dashboard.section.header.val = {
    [[          _____                    _____                    _____                    _____                    _____                _____          ]],
    [[         /\    \                  /\    \                  /\    \                  /\    \                  /\    \              /\    \         ]],
    [[        /::\    \                /::\    \                /::\____\                /::\    \                /::\    \            /::\____\        ]],
    [[       /::::\    \              /::::\    \              /::::|   |               /::::\    \              /::::\    \          /:::/    /        ]],
    [[      /::::::\    \            /::::::\    \            /:::::|   |              /::::::\    \            /::::::\    \        /:::/    /         ]],
    [[     /:::/\:::\    \          /:::/\:::\    \          /::::::|   |             /:::/\:::\    \          /:::/\:::\    \      /:::/    /          ]],
    [[    /:::/__\:::\    \        /:::/__\:::\    \        /:::/|::|   |            /:::/  \:::\    \        /:::/__\:::\    \    /:::/____/           ]],
    [[    \:::\   \:::\    \      /::::\   \:::\    \      /:::/ |::|   |           /:::/    \:::\    \      /::::\   \:::\    \   |::|    |            ]],
    [[  ___\:::\   \:::\    \    /::::::\   \:::\    \    /:::/  |::|   | _____    /:::/    / \:::\    \    /::::::\   \:::\    \  |::|    |     _____  ]],
    [[ /\   \:::\   \:::\    \  /:::/\:::\   \:::\    \  /:::/   |::|   |/\    \  /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \ |::|    |    /\    \ ]],
    [[/::\   \:::\   \:::\____\/:::/  \:::\   \:::\____\/:: /    |::|   /::\____\/:::/____/     \:::|    |/:::/__\:::\   \:::\____\|::|    |   /::\____\]],
    [[\:::\   \:::\   \::/    /\::/    \:::\  /:::/    /\::/    /|::|  /:::/    /\:::\    \     /:::|____|\:::\   \:::\   \::/    /|::|    |  /:::/    /]],
    [[ \:::\   \:::\   \/____/  \/____/ \:::\/:::/    /  \/____/ |::| /:::/    /  \:::\    \   /:::/    /  \:::\   \:::\   \/____/ |::|    | /:::/    / ]],
    [[  \:::\   \:::\    \               \::::::/    /           |::|/:::/    /    \:::\    \ /:::/    /    \:::\   \:::\    \     |::|____|/:::/    /  ]],
    [[   \:::\   \:::\____\               \::::/    /            |::::::/    /      \:::\    /:::/    /      \:::\   \:::\____\    |:::::::::::/    /   ]],
    [[    \:::\  /:::/    /               /:::/    /             |:::::/    /        \:::\  /:::/    /        \:::\   \::/    /    |::::::::::/    /    ]],
    [[     \:::\/:::/    /               /:::/    /              |::::/    /          \:::\/:::/    /          \:::\   \/____/      ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯     ]],
    [[      \::::::/    /               /:::/    /               /:::/    /            \::::::/    /            \:::\    \                              ]],
    [[       \::::/    /               /:::/    /               /:::/    /              \::::/    /              \:::\____\                             ]],
    [[        \::/    /                \::/    /                \::/    /                \::/    /                \::/    /                             ]],
    [[         \/____/                  \/____/                  \/____/                  ¯¯¯¯¯¯¯                  \/____/                              ]],
    [[                                                                                                                                                  ]]
}
local function footer()
	return "SANDEV"
end

lvim.builtin.alpha.dashboard.section.footer.val = footer()
