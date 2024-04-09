return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          --visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {},
          never_show = { ".git" },
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function(arg)
            vim.cmd([[
              setlocal relativenumber
            ]])
          end,
        },
      },
    },
  },
}
