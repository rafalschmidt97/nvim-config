-- dynamic color scheme
---@diagnostic disable-next-line: lowercase-global
function scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    -- return "Builtin Solarized Dark"
    -- return "Gruvbox Dark (Gogh)"
    return "darcula-solid" -- JetBrains Darcula equivalent
  else
    -- return "Gruvbox light, hard (base16)"
    -- return "GruvboxLight"
    return "gruvbox" -- Gruvbox (Gogh) equivalent
    -- return "Builtin Solarized Light"
  end
end

return {
  {
    "briones-gabriel/darcula-solid.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "", -- can be "hard", "soft" or empty string
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = function()
      -- Detect system appearance (dark/light mode) to match wezterm
      local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
      local appearance = "Light"
      
      if handle then
        local result = handle:read("*a")
        handle:close()
        if result:find("Dark") then
          appearance = "Dark"
        end
      end
      
      return {
        colorscheme = scheme_for_appearance(appearance),
      }
    end,
  },
}
