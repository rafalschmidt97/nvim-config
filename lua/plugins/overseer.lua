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
}
