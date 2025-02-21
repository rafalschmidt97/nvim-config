-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- opt.tabstop = 4 -- Number of spaces tabs count for, 4 for golang
-- opt.shiftwidth = 4 -- Size of an indent
-- opt.expandtab = false -- Use spaces instead of tabs

-- opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.conceallevel = 0

opt.clipboard = "unnamedplus" -- Sync with system clipboard
-- Prevent overwriting the unnamed register (") when replacing selected text:
-- xnoremap p "_dP
vim.api.nvim_set_keymap("x", "p", '"_dP', { noremap = true, silent = true })
-- Always paste from the yank register ("0) to keep the last yanked content intact:
-- xnoremap p "0p
-- vim.api.nvim_set_keymap("x", "p", '"0p', { noremap = true, silent = true })
-- local map = vim.keymap.set
-- map("x", "p", '"_dP<Plug>(YankyPutAfter)', { noremap = false, silent = true })
-- map("x", "P", '"_dP<Plug>(YankyPutBefore)', { noremap = false, silent = true })
