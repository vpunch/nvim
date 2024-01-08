require'conform'.setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff_fix', 'ruff_format' },  -- выполняются последовательно
    javascript = { 'prettier' },
  },
}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    require'conform'.format { bufnr = args.buf }
  end,
})
