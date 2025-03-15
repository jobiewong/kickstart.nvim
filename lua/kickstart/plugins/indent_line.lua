return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {},
  config = function()
    local hooks = require 'ibl.hooks'

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'DimWhite', { fg = '#373539' })
    end)
    require('ibl').setup {
      indent = {
        char = '▏',
        highlight = 'DimWhite',
      },
    }
  end,
}
