local lint = require 'lint'

lint.linters_by_ft = require('project.config').linters

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    lint.try_lint()
  end,
})
