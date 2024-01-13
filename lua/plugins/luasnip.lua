luasnip = require'luasnip'

luasnip.setup {
  enable_autosnippets = true,
  store_selection_keys = '<Tab>'
}

luasnip.loaders.from_snipmate.lazy_load {
  paths = { '~/.config/nvim/snippets' } 
}
