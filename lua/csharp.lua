local enabled_csharp_ls = "omnisharp"
local disabled_csharp_ls = "csharp_ls"
lvim.lsp.installer.setup.ensure_installed =
    vim.list_extend(lvim.lsp.installer.setup.ensure_installed, { enabled_csharp_ls })
lvim.lsp.automatic_configuration.skipped_servers =
    vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { disabled_csharp_ls })

if enabled_csharp_ls == "omnisharp" then
    local omnisharp_opts = {}
    local status_ok, omnisharp_extended = pcall(require, "omnisharp_extended")
    if status_ok then
        omnisharp_opts = {

            handlers                    = {
                ["textDocument/definition"] = omnisharp_extended.handler,
            },
            organize_imports_on_format  = true,
            enable_editorconfig_support = true,
            enable_roslyn_analyzers     = true,
            enable_import_completion    = true,
            sdk_include_prereleases     = false,
            analyze_open_documents_only = true,
            cmd                         = { "/home/yulian/omnisharp/run", "--languageserver", "--hostPID",
                tostring(vim.fn.getpid())
            }
        }
    end
    require("lvim.lsp.manager").setup("omnisharp", omnisharp_opts)
    return
end

local csharp_ls_opts = {}
require("lspconfig")[enabled_csharp_ls].setup(csharp_ls_opts)
