require('gruvbox').setup {
  transparent_mode = false,
  overrides = {
    SignColumn = { bg = 'None' },
    GruvboxRedSign = { bg = 'None' },
    GruvboxYellowSign = { bg = 'None' },
    GruvboxBlueSign = { bg = 'None' },
    GruvboxAquaSign = { bg = 'None' },
  },
}

vim.cmd 'colorscheme gruvbox'
