local conform = require 'conform'

conform.setup {
  formatters_by_ft = require('project.config').formatters,
  -- :ConformInfo
  --log_level = vim.log.levels.DEBUG,
}

vim.keymap.set('n', '<space>f', function()
  -- If there is no formatter, LSP formatting will run
  conform.format { async = true, lsp_format = 'fallback' }
end)
