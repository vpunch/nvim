local conform = require 'conform'

conform.setup { formatters_by_ft = require('project.config').formatters }

vim.keymap.set('n', '<space>f', function()
  conform.format { async = true, lsp_fallback = true }
end)
