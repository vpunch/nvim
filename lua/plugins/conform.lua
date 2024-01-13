require'conform'.setup {
  formatters_by_ft = {
    --lua = { 'stylua' },
    python = { 'ruff_fix', 'ruff_format' },  -- выполняются последовательно
    javascript = { 'prettier' }
  }
}
