require('luasnip').setup {
  enable_autosnippets = true,
  store_selection_keys = '<Tab>',
}

require('luasnip.loaders.from_snipmate').lazy_load {
  paths = { vim.env.HOME .. '/.config/nvim/snippets' },
}
