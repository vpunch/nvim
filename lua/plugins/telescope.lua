require('telescope').setup {
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_mru = true,
      mappings = {
        i = {
          ['<c-d>'] = 'delete_buffer',
        },
      },
    },
  },
}

local keymap = vim.keymap
local builtin = require 'telescope.builtin'

-- Поиск файла
keymap.set('n', '<leader>ff', builtin.find_files, {}) -- по имени
keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- с указанным текстом
-- Поиск буфера по имени
keymap.set('n', '<leader>fb', builtin.buffers, {})
