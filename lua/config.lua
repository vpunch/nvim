vim.opt.termguicolors = true
vim.o.background = 'dark'

vim.cmd'syntax on'  -- не работает с treesitter

vim.g.vim_json_conceal = 0

-- Часто файлы имеют расширение .json
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.json',
  callback = function() vim.b.filetype = 'jsonc' end
})

vim.opt.tabstop = 4
vim.bo.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.colorcolumn = { 72, 79 }
vim.opt.cursorcolumn = true
vim.opt.signcolumn = 'yes'  -- лучше не скрывать, чтобы не дергался код

vim.opt.textwidth = 0  -- неудобно, когда набирается не простой текст
vim.opt.wrap = true
vim.opt.linebreak = false  -- перенос по словам, а не по символам

vim.opt.spelllang = 'en,ru'
vim.opt.spellfile = '/home/vanya/.config/nvim/spell/dict.utf-8.add'

vim.g.mapleader = ','
vim.opt.list = true
vim.opt.showmode = true  -- показывать режим работы
vim.opt.undofile = true
vim.opt.shell = '/bin/bash'
vim.opt.updatetime = 300
vim.opt.mouse = ''
vim.opt.equalalways = false
vim.opt.backspace = { 'indent', 'eol', 'start' }  -- для работы по SSH
vim.opt.conceallevel = 1

vim.opt.listchars = {
  eol = '¬',
  space = ' ',
  lead = ' ',
  trail = ' ',
  nbsp = '◇',
  tab = '->',
  extends = '▸',
  precedes = '◂',
  multispace = ' ·',
  leadmultispace = '    '
}

vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><', { noremap = true })
