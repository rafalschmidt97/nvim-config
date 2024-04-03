return {
  {
    "folke/noice.nvim",

    -- View	Backend	Description
    -- notify	notify	nvim-notify with level=nil, replace=false, merge=false
    -- split	split	horizontal split
    -- vsplit	split	vertical split
    -- popup	popup	simple popup
    -- mini	mini	minimal view, by default bottom right, right-aligned
    -- cmdline	popup	bottom line, similar to the classic cmdline
    -- cmdline_popup	popup	fancy cmdline popup, with different styles according to the cmdline mode
    -- cmdline_output	split	split used by config.presets.cmdline_output_to_split
    -- messages	split	split used for :messages
    -- confirm	popup	popup used for confirm events
    -- hover	popup	popup used for lsp signature help and hover
    -- popupmenu	nui.menu	special view with the options used to render the popupmenu when backend is nui

    -- "<leader>snl",
    -- desc = "Noice Last Message",
    -- "<leader>snh",
    -- desc = "Noice History",

    opts = {
      -- cmdline = {
      --   enabled = true, -- enables the Noice cmdline UI
      --   view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      -- },

      -- messages = {
      --   view = "notify", -- default view for messages
      --   enabled = true, -- enables the Noice messages UI
      --   view_error = "notify", -- view for errors
      --   view_warn = "notify", -- view for warnings
      --   view_history = "messages", -- view for :messages
      --   view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
      -- },

      -- popupmenu = {
      --   enabled = true, -- enables the Noice popupmenu UI
      --   backend = "nui", -- backend to use to show regular cmdline completions
      -- },

      -- redirect = {
      --   view = "popup",
      --   filter = { event = "msg_show" },
      -- },

      -- commands

      -- notify = {
      --   -- Noice can be used as `vim.notify` so you can route any notification like other messages
      --   -- Notification messages have their level and other properties set.
      --   -- event is always "notify" and kind can be any log level as a string
      --   -- The default routes will forward notifications to nvim-notify
      --   -- Benefit of using Noice for this is the routing and consistent history view
      --   enabled = true,
      --   view = "notify",
      --   -- view = "mini",
      -- },

      -- lsp = {
      --   progress = {
      --     enabled = true,
      --     -- Lsp Progress is formatted using the builtins for lsp_progress. See config.format.builtin
      --     -- See the section on formatting for more details on how to customize.
      --     view = "mini",
      --   },
      --   hover = {
      --     enabled = true,
      --     silent = false, -- set to true to not show a message if hover is not available
      --     view = nil, -- when nil, use defaults from documentation
      --   },
      --   signature = {
      --     enabled = true,
      --     view = nil, -- when nil, use defaults from documentation
      --   },
      --   message = {
      --     -- Messages shown by lsp servers
      --     enabled = true,
      --     view = "notify",
      --   },
      --   -- defaults for hover and signature help
      --   documentation = {
      --     view = "hover",
      --   },
      -- },

      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },

      -- views = {
      --   notify = {
      --     backend = "notify",
      --     fallback = "mini",
      --     format = "notify",
      --     replace = false,
      --     merge = false,
      --   },
      -- },

      -- routes = {
      --   {
      --     view = "mini", -- default
      --   },
      -- },
    },
  },
}
