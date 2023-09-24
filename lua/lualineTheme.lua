local M = {}

M.config = function()
lvim.builtin.lualine.options.theme = 'horizon'
lvim.builtin.lualine.options.section_separators = { left = "", right = "" }
lvim.builtin.lualine.options.component_separators = { left = "|", right = "|" }
lvim.builtin.lualine.sections = {
    lualine_x = {'encoding', 'fileformat', 'filetype'},
}
end

return M
