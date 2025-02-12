-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- opt.tabstop = 4 -- Number of spaces tabs count for, 4 for golang
-- opt.shiftwidth = 4 -- Size of an indent
-- opt.expandtab = false -- Use spaces instead of tabs

-- opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.conceallevel = 0

-- If you want your clipboard to remain unchanged when replacing text, you can enable system clipboard:
opt.clipboard = "unnamedplus" -- Sync with system clipboard
-- vnoremap p "0p -- 0 stores the last yanked text even after deleting:
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true }) -- black hole register discards deleted text
