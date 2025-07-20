return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],
      direction = 'horizontal', -- or 'vertical' | 'float' | 'tab'
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
    }
    vim.keymap.set('n', '<leader>tt', require('toggleterm').toggle, { desc = 'Toggle terminal' })
    vim.keymap.set('n', '<leader>tf', function()
      require('toggleterm.terminal').Terminal:new({ direction = 'float' }):toggle()
    end, { desc = 'Toggle floating terminal' })
  end,
  opts = {--[[ things you want to change go here]]
  },
}
