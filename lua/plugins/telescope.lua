require('telescope').setup({
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_mru = true,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        },
      },
    },
  },
})

local builtin = require('telescope.builtin')
-- поиск файлов
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- по тексту
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- открытые буферы
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- теги
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }

