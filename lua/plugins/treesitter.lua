require'nvim-treesitter.configs'.setup {
  ensure_installed = {  -- список парсеров
    "lua",
    'css',
    'graphql',
    'python',
    -- Вим
    "vim",
    "vimdoc",
    -- Си
    "c",
    "cpp",
    'qmljs',
    'javascript',  -- есть поддержка jsx
    'typescript',
    'tsx',
    'html'  -- есть поддержка jinja2, но только для html
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
}
