require('telescope').setup {
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      show_all_buffers = true,
      sort_mru = true,
      mappings = {
        i = {
          ['<C-d>'] = 'delete_buffer',
        },
      },
    },
  },
}

local keymap = vim.keymap
local builtin = require 'telescope.builtin'

-- Search for files
keymap.set('n', '<leader>ff', builtin.find_files, {}) -- by name
keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- with the specified text
-- Searching for a buffer by name
keymap.set('n', '<leader>fb', builtin.buffers, {})
