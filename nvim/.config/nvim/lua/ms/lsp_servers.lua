-- Mason and LSP setup
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "clangd", "lua_ls" },
}

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup {
    capabilities = capabilities,
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp", "h" },
}

-- Telescope keymaps
--vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
--vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep)
