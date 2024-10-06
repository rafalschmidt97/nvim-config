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
      window = {
        width = 60,
      },
      default_component_configs = {
        file_size = {
          enabled = false,
          required_width = 84,
        },
        type = {
          enabled = false,
          required_width = 142,
        },
        last_modified = {
          enabled = false,
          required_width = 108,
        },
        created = {
          enabled = false,
          required_width = 130,
        },
        symlink_target = {
          enabled = false,
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
