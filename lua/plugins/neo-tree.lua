return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>lua ToggleNeotree()<CR>', { noremap = true, silent = true })
    local neotree_is_open = false
    function ToggleNeotree()
      -- Check if Neotree is open or not
      if neotree_is_open then
        vim.cmd(":Neotree source=filesystem action=close")
        neotree_is_open = false
      else
        vim.g.neotree_width = 10
        vim.cmd(":Neotree source=filesystem reveal=true")
        neotree_is_open = true
      end
    end

    require("neo-tree").setup({
      window = {
        position = "left",
        width = 30,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
      }
    })

    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
  end,
}
