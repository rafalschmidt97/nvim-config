return {
  {
    "TobinPalmer/pastify.nvim",
    cmd = { "Pastify" },
    config = function()
      require("pastify").setup({
        opts = {
          absolute_path = false,
          local_path = "/.attachments/",
          save = "local",
        },
      })
    end,
  },
}
