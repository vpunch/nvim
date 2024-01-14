vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_quickfix_mode = 2

vim.g.vimtex_compiler_latexmk = {
  build_dir = 'texout',
  options = {
    '-pdf',
    '-shell-escape',
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}
