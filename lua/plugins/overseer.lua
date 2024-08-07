return {
  {
    "stevearc/overseer.nvim",
    opts = {
      templates = { "builtin", "user.run_script" },
      task_list = {
        direction = "bottom",
        -- max_height = 10,
        default_detail = 1,
      },
    },
  },

  -- { depricated api for default
  --   "folke/which-key.nvim",
  --   opts = function(_, opts)
  --     if LazyVim.has("overseer.nvim") then
  --       opts.defaults["<leader>o"] = { name = "+overseer" }
  --       opts.defaults["<leader>os"] = { name = "+run script" }
  --     end
  --   end,
  --   -- opts = {
  --   --   defaults = {
  --   --     ["<leader>o"] = { name = "+overseer" },
  --   --     ["<leader>os"] = { name = "+run script" }
  --   --   },
  --   -- },
  -- },
}
