require('gruvbox').setup {
  overrides = {
    SignColumn = { bg = 'NONE' },
    GruvboxRedSign = { bg = 'NONE' },
    GruvboxYellowSign = { bg = 'NONE' },
    GruvboxBlueSign = { bg = 'NONE' },
  },
}

vim.cmd 'colorscheme gruvbox'
