return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/nvim-nio',
    'nvim-neotest/neotest-go',
  },
  opts = {},

  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-go',
      },
      output_panel = {
        enabled = true,
        open = 'botright split | resize 15',
      },
      quickfix = {
        open = false,
      },
    }
  end,
}
