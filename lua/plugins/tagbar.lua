vim.g.tagbar_width = 40
vim.g.tagbar_position = 'botright vertical'
vim.g.tagbar_sort = 0

vim.api.nvim_create_autocmd('VimEnter', {
  nested = true,
  callback = function() call tagbar#autoopen(1) end
})
