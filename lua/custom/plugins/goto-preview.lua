return {
  'rmagatti/goto-preview',
  dependencies = { 'rmagatti/logger.nvim' },
  event = 'BufEnter',
  config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
  opts = {},
  config = function()
    require('goto-preview').setup {}
    vim.keymap.set('n', 'grpd', require('goto-preview').goto_preview_definition, { desc = 'LSP: [G]oto [P]review [D]efinition' })
    vim.keymap.set('n', 'grpt', require('goto-preview').goto_preview_type_definition, { desc = 'LSP: [G]oto [P]review [T]ype Definition' })
    vim.keymap.set('n', 'grpi', require('goto-preview').goto_preview_implementation, { desc = 'LSP: [G]oto [P]review [I]mplementaion' })
    vim.keymap.set('n', 'grpD', require('goto-preview').goto_preview_declaration, { desc = 'LSP: [G]oto [P]review [D]eclaration' })
    vim.keymap.set('n', 'grpq', require('goto-preview').close_all_win, { desc = 'LSP: [G]oto [P]review Close Window' })
    vim.keymap.set('n', 'grpr', require('goto-preview').goto_preview_references, { desc = 'LSP: [G]oto [P]review [R]eferences' })
  end,
}
