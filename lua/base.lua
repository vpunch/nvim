local opt = vim.opt
local g = vim.g

opt.termguicolors = true
opt.background = 'dark'

vim.cmd 'syntax on' -- не работает с treesitter
g.vim_json_conceal = 0

-- Часто файлы имеют расширение .json
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.json',
  callback = function()
    vim.b.filetype = 'jsonc'
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html,xml,typescriptreact,vim,lua',
  callback = function(args)
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
  end,
})

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 0
opt.expandtab = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.number = true
opt.relativenumber = false

opt.colorcolumn = { 72, 79 }
opt.cursorcolumn = false
opt.signcolumn = 'yes' -- лучше не скрывать, чтобы не дергался код

opt.textwidth = 0 -- неудобно, когда набирается не простой текст
opt.wrap = true
opt.linebreak = false -- перенос по словам приводит к очень рваному краю

opt.spelllang = 'en,ru'
opt.spellfile = '/home/vanya/.config/nvim/spell/dict.utf-8.add'

g.mapleader = ','
opt.list = true
opt.showmode = true -- почему нет
opt.undofile = false -- не удобно, когда нельзя откатить все изменения
opt.shell = '/bin/bash'
opt.updatetime = 300
opt.mouse = ''
opt.equalalways = false
opt.backspace = { 'indent', 'eol', 'start' } -- для работы по SSH
opt.conceallevel = 1
opt.exrc = true

opt.listchars = {
  eol = '¬',
  space = ' ',
  lead = ' ',
  trail = ' ',
  nbsp = '◇',
  tab = '->',
  extends = '▸',
  precedes = '◂',
  multispace = ' ·',
  leadmultispace = '   │',
}

vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><', { noremap = true })
