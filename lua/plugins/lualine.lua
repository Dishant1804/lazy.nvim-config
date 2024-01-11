return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      local andromeda_lualine = require("andromeda.plugins.lualine")

      require("lualine").setup({
        options = {
          theme = andromeda_lualine.theme,
        },
        sections = andromeda_lualine.sections,
        inactive_sections = andromeda_lualine.inactive_sections,
      })
    end,
  }
}
