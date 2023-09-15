local M = {}

M.config = function()

local options = {
    filetypes = {
        "html",
        "svelte",
        "vue",
        "typescript",
        "javascript",
        "javascriptreact",
        "typescriptreact",
        "php",
        "xml",
        "css",
        "less",
        "postcss",
        "sass",
        "scss",
    },
    root_dir = function()
        return vim.loop.cwd()
    end,
}

require("lvim.lsp.manager").setup("emmet_ls", options)

end

return M
