require('nvim-treesitter.configs').setup {
  ensure_installed = { -- list of parsers
    'lua',
    'python',
    'markdown',
    'dockerfile',
    'java',
    -- Vim
    'vim',
    'vimdoc',
    -- C
    'c',
    'cpp',
    'qmljs',
    -- JS
    'javascript', -- has JSX support
    'typescript',
    'tsx',
    'css',
    'html', -- has Jinja2 support but only for HTML files
    'xml',
    'jsonc',
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
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
