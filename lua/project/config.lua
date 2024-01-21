local pylsp_plugins = {
  rope = { enabled = true },
  ruff = { enabled = true },
  mypy = { enabled = true },
  isort = { enabled = false },
  pycodestyle = { enabled = false },
  pydocstyle = { enabled = false },
  pyflakes = { enabled = false },
  mccabe = { enabled = false },
  flake8 = { enabled = false },
  pylint = { enabled = false },
  yapf = { enabled = false },
}

-- https://github.com/mfussenegger/nvim-lint/issues/180
local linters = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  css = { 'stylelint' },
  html = { 'eslint_d' },
  jsonc = { 'eslint_d' },
}

local formatters = {
  lua = { 'stylua' },
  python = { 'ruff_fix', 'ruff_format' }, -- executed sequentially
  javascript = { 'prettierd' },
  typescript = { 'prettierd' },
  javascriptreact = { 'prettierd' },
  typescriptreact = { 'prettierd' },
  css = { 'prettierd' },
  html = { 'prettierd' },
  jsonc = { 'prettierd' },
  yaml = { 'prettierd' },
  markdown = { 'prettierd' },
  graphql = { 'prettierd' },
}

local config = {
  pylsp_plugins = pylsp_plugins,
  linters = linters,
  formatters = formatters,
}
require('project.patch').patch(config)

return config
