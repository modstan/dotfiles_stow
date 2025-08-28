-- vim.g.mapleader = " "
local keymap = vim.keymap
vim.api.nvim_set_keymap("n", "<F7>", 'o printk("MODESTAS: %s %d (%pSR)\\n", __func__, __LINE__, (void *)__builtin_return_address(0));<Esc>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F10>", ":set invlist<CR>", { noremap = true, silent = true })
