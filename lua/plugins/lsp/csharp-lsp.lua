return {
  { import = "lazyvim.plugins.extras.lang.omnisharp" },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- cs = { "csharpier" },
        cs = {}, -- disable, strange
      },
      formatters = {
        csharpier = {
          command = "dotnet-csharpier",
          args = { "--write-stdout" },
        },
      },
    },
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     vim.list_extend(opts.ensure_installed, {
  --       "c_sharp",
  --     })
  --   end,
  -- },
  --
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     vim.list_extend(opts.ensure_installed, {
  --       "csharp-language-server",
  --       "csharpier",
  --     })
  --   end,
  -- },
  --
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       csharp_ls = {},
  --     },
  --   },
  -- },
}
