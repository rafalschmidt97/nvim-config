return {
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "attachements",

        extension = "png",
        file_name = "%Y-%m-%d-%H-%M-%S",
        use_absolute_path = false,
        relative_to_current_file = true,

        -- template options
        template = "$file_path",
        url_encode_path = false,
        relative_template_path = true,
        use_cursor_in_template = true,
        insert_mode_after_paste = true,

        -- prompt options
        prompt_for_file_name = true,
        show_dir_path_in_prompt = false,

        -- image options
        process_cmd = "",
        copy_images = false,
        download_images = true,

        -- drag and drop options
        drag_and_drop = {
          enabled = true, ---@type boolean
          insert_mode = false, ---@type boolean
        },
      },
    },
    keys = {
      -- { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  },
}
