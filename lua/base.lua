local opt = vim.opt
local g = vim.g
local b = vim.b

opt.termguicolors = true
opt.background = 'dark'

vim.cmd 'syntax on' -- doesn't work with `nvim-treesitter`
g.vim_json_conceal = 0

-- These files often have the extension `.json`
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.json',
  callback = function()
    b.filetype = 'jsonc'
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = table.concat(require('project.config').short_tab_exts, ','),
  callback = function(args)
    opt.tabstop = 2
    opt.shiftwidth = 2
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
opt.signcolumn = 'yes' -- the code stops twitching

opt.textwidth = 0 -- works well only for plain text
opt.wrap = true
opt.linebreak = false -- a very ragged edge looks bad

opt.spelllang = 'en,ru'
opt.spellfile = vim.env.HOME .. '/.config/nvim/spell/dict.utf-8.add'

g.mapleader = 'm'
opt.list = true
opt.showmode = true -- why not
opt.undofile = false -- so that you can undo all changes
opt.shell = '/bin/bash'
opt.updatetime = 300
opt.mouse = ''
opt.equalalways = false
opt.backspace = { 'indent', 'eol', 'start' } -- to work over SSH
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
