return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      -- Set up null-ls with the formatting source
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier
        }
      })

      -- Set up the keymap for formatting with null-ls
      vim.keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format()<CR>", { silent = true })
    end,
  },
}
