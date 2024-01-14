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

local linters = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  css = { 'stylelint' },
}

local formatters = {
  lua = { 'stylua' },
  python = { 'ruff_fix', 'ruff_format' }, -- выполняются последовательно
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

local cwd = vim.fn.getcwd(-1, -1)

if cwd == '/home/vanya/mycore/mashtab/zenator/repo/core-base' then
  pylsp_plugins.ruff.enabled = false
  pylsp_plugins.isort.enabled = true
  pylsp_plugins.pycodestyle.enabled = true
  pylsp_plugins.flake8.enabled = true
  pylsp_plugins.yapf.enabled = true

  formatters.python = { 'yapf', 'isort' }
elseif cwd == '/home/vanya/mycore/mashtab/zenator/repo/web-api' then
  formatters.javascript = { 'eslint_d' }
  formatters.typescript = { 'eslint_d' }
  formatters.javascriptreact = { 'eslint_d' }
  formatters.typescriptreact = { 'eslint_d' }
  formatters.css = { 'stylelint' }
  formatters.html = { 'eslint_d' }
  formatters.jsonc = { 'eslint_d' }
end

return {
  pylsp_plugins = pylsp_plugins,
  formatters = formatters,
  linters = linters,
}
