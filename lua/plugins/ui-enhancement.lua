return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    'akinsho/bufferline.nvim',
    event = "VimEnter",
    config = function()
      require("bufferline").setup {
        options = {
          mappings = true,
        },
      }

      vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '`', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end,
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'akinsho/toggleterm.nvim',
    event = "VimEnter", -- Load toggleterm after VimEnter event
    config = function()
      require("toggleterm").setup {
        size = 15,                -- Terminal size
        open_mapping = [[<c-t>]], -- Open terminal using <c-t>
        hide_numbers = true,      -- Hide terminal buffers in bufferline
        direction = 'float',      -- Set terminal direction to 'float'
      }

      -- Toggle terminal using <leader>t
      vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTermOpenAll<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'HiPhish/rainbow-delimiters.nvim',

  }
}
