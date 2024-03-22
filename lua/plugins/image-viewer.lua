return {
  {
    "https://github.com/adelarsq/image_preview.nvim",
    event = "VeryLazy",
    config = function()
      require("image_preview").setup()
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        window = {
          mappings = {
            ["<leader>p"] = "image_wezterm",
          },
        },
        commands = {
          image_wezterm = function(state)
            local node = state.tree:get_node()
            if node.type == "file" then
              require("image_preview").PreviewImage(node.path)
            end
          end,
        },
      },
    },
  },

  -- {
  --   -- https://github.com/dharmx/telescope-media.nvim
  --   "dharmx/telescope-media.nvim",
  --   config = function()
  --     require("telescope").load_extension("media")
  --   end,
  -- },
  --
  -- {
  --    -- https://github.com/nvim-telescope/telescope-media-files.nvim
  --   "nvim-telescope/telescope-media-files.nvim",
  --   dependencies = {
  --     "nvim-lua/popup.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   config = function()
  --     require("telescope").load_extension("media_files")
  --   end,
  -- },
  --
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = {
  --     extensions = {
  --       media = {
  --         backend = "viu",
  --         -- backend = "chafa/catimg"
  --         -- backend = "ueberzug/ueberzugpp",
  --         -- backend = "ueberzug",
  --         -- backend = "jp2a",
  --       },
  --       -- media_files = {
  --       --   filetypes = { "png", "jpg", "jpeg", "svg" },
  --       --   find_cmd = "rg",
  --       -- },
  --     },
  --   },
  -- },
}
