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
  javascriptreact = { 'eslint_d', 'stylelint' },
  typescriptreact = { 'eslint_d', 'stylelint' },
  css = { 'stylelint' },
  html = { 'eslint_d', 'stylelint' },
  json = { 'eslint_d' },
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
  json = { 'prettierd' },
  jsonc = { 'prettierd' },
  yaml = { 'prettierd' },
  markdown = { 'prettierd' },
  graphql = { 'prettierd' },
}

local short_tab_exts = {
  'lua',
  'javascript',
  'typescript',
  'javascriptreact',
  'typescriptreact',
  'html',
  'xml',
  'vim',
}

local config = {
  pylsp_plugins = pylsp_plugins,
  linters = linters,
  formatters = formatters,
  short_tab_exts = short_tab_exts,
}
require('project.patch').patch(config)

return config
