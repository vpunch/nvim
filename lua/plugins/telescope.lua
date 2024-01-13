telescope = require'telescope'

telesope.setup {
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
local builtin = telescope.builtin

keymap.set('n', '<leader>ff', builtin.find_files, {})  -- файлы
keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- текст
keymap.set('n', '<leader>fb', builtin.buffers, {})  -- буферы
