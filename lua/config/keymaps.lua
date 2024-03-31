-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>os",
  "<cmd>OverseerRunScriptOpenFloat<cr>",
  { desc = "Overseer Run Script and Open Float" }
)
vim.keymap.set(
  "n",
  "<leader>oo",
  "<cmd>OverseerRunScriptOpenHSplit<cr>",
  { desc = "Overseer Run Script and Open HSplit" }
)
vim.keymap.set("n", "<leader>of", "<cmd>OverseerOpenFloat<cr>", { desc = "Overseer Open Float" })
vim.keymap.set("n", "<leader>or", "<cmd>OverseerRun<cr>", { desc = "Overseer Run" })
vim.keymap.set("n", "<leader>oq", "<cmd>OverseerQuickActioncr>", { desc = "Overseer Quick Action" })
vim.keymap.set("n", "<leader>ot", "<cmd>OverseerToggle<cr>", { desc = "Overseer Toggle" })
vim.keymap.set("n", "<leader>oc", "<cmd>OverseerClose<cr>", { desc = "Overseer Close" })
