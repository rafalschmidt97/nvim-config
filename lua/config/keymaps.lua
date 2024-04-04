-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>or", "<cmd>OverseerRun<cr>", { desc = "Overseer Run" })
vim.keymap.set("n", "<leader>oq", "<cmd>OverseerQuickAction<cr>", { desc = "Overseer Quick Action" })
vim.keymap.set("n", "<leader>ot", "<cmd>OverseerToggle<cr>", { desc = "Overseer Toggle" })
vim.keymap.set("n", "<leader>oc", "<cmd>OverseerClose<cr>", { desc = "Overseer Close" })

vim.keymap.set("n", "<leader>oo", "<cmd>OverseerRestartLast<cr>", { desc = "Overseer Restart Last" })
vim.keymap.set("n", "<leader>oss", "<cmd>OverseerRunScript<cr>", { desc = "Overseer Run Script" })
vim.keymap.set("n", "<leader>ost", "<cmd>OverseerRunScriptToggle<cr>", { desc = "Overseer Run Script Toggle" })
vim.keymap.set("n", "<leader>osf", "<cmd>OverseerRunScriptOpenFloat<cr>", { desc = "Overseer Run Script Open Float" })
