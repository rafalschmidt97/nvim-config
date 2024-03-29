return {
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "prettier" },
        ["typescript"] = { "prettier" },
        ["css"] = { "prettier" },
        ["html"] = { "prettier" },
        ["json"] = { "prettier" },
        ["jsonc"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
      },
      -- format_on_save = function(bufnr)
      --   -- Disable autoformat on certain filetypes
      --   local ignore_filetypes = { "html", "yaml" }
      --   if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
      --     return
      --   end
      --   -- Disable with a global or buffer-local variable
      --   if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      --     return
      --   end
      --   -- Disable autoformat for files in a certain path
      --   local bufname = vim.api.nvim_buf_get_name(bufnr)
      --   if bufname:match("/node_modules/") then
      --     return
      --   end
      --
      --   return { timeout_ms = 500, lsp_fallback = true }
      -- end,
    },
  },
}
