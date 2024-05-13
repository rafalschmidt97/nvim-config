return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "netcoredbg", "csharp-language-server" })
      end
    end,
  },
  -- { "Decodetalkers/csharpls-extended-lsp.nvim", lazy = true }, TODO: does not work
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "c_sharp" })
      end
    end,
  },
  -- https://www.reddit.com/r/neovim/comments/1agwrqa/how_to_extend_masons_automatic_server/
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        csharp_ls = {
          handlers = {
            -- ["textDocument/definition"] = require("csharpls_extended").handler,
            -- ["textDocument/typeDefinition"] = require("csharpls_extended").handler,
          },
          -- cmd = { csharpls },
          keys = {
            -- {
            --   "gd",
            --   function()
            --     require("csharp_ls_extended").lsp_definitions()
            --   end,
            --   desc = "Goto Definition",
            -- },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")
      if not dap.adapters["netcoredbg"] then
        require("dap").adapters["netcoredbg"] = {
          type = "executable",
          command = vim.fn.exepath("netcoredbg"),
          args = { "--interpreter=vscode" },
        }
      end
      for _, lang in ipairs({ "cs" }) do
        if not dap.configurations[lang] then
          dap.configurations[lang] = {
            {
              type = "netcoredbg",
              name = "Launch file",
              request = "launch",
              ---@diagnostic disable-next-line: redundant-parameter
              program = function()
                return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/", "file")
              end,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end
    end,
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "Issafalcon/neotest-dotnet",
    },
    opts = {
      adapters = {
        ["neotest-dotnet"] = {
          -- Here we can set options for neotest-dotnet
        },
      },
    },
  },
}
