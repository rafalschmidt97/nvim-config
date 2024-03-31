-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "html", "yaml", "cs" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Overseer
vim.api.nvim_create_user_command("OverseerRunScriptOpenFloat", function()
  local overseer = require("overseer")
  overseer.run_template({ name = "run script" }, function(task)
    if task then
      overseer.run_action(task, "open float")
    else
      vim.notify("Run not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})

vim.api.nvim_create_user_command("OverseerRunScriptOpenHSplit", function()
  local overseer = require("overseer")
  overseer.run_template({ name = "run script" }, function(task)
    if task then
      overseer.run_action(task, "open hsplit")
    else
      vim.notify("Run not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})

vim.api.nvim_create_user_command("OverseerOpenFloat", function()
  local overseer = require("overseer")
  overseer.run_action("open float")
end, {})

vim.api.nvim_create_user_command("OverseerRunScript", function()
  local overseer = require("overseer")
  overseer.run_template({ name = "run script" })
end, {})

vim.api.nvim_create_user_command("OverseerRunScriptWatchVSplit", function()
  local overseer = require("overseer")
  overseer.run_template({ name = "run script" }, function(task)
    if task then
      task:add_component({ "restart_on_save", paths = { vim.fn.expand("%:p") } })
      local main_win = vim.api.nvim_get_current_win()
      overseer.run_action(task, "open vsplit")
      vim.api.nvim_set_current_win(main_win)
    else
      vim.notify("WatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})
