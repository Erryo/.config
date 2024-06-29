-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_set_keymap("n", "<F5>", [[:let _s=@/ | %s/\s\+$//e | let @/=_s<CR>]], { noremap = true, silent = true })
