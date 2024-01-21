local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Тема
  { 'ellisonleao/gruvbox.nvim' },
  -- Перемещение
  { 'ggandor/leap.nvim' },
  -- Синтаксис
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  -- Дебагинг
  { 'puremourning/vimspector', lazy = false },
  -- Поддержка LaTeX (включает conceal)
  { 'lervag/vimtex' },
  -- Открытие файла по имени
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  -- Интеграция с гитом
  { 'lewis6991/gitsigns.nvim' },
  -- Интеграция с языковыми серверами
  { 'neovim/nvim-lspconfig' },
  -- Автодополнение
  {
    'hrsh7th/nvim-cmp',
    event = { 'InsertEnter', 'CmdlineEnter' },
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip', -- должен соответствовать плагину снипетов
    },
  },
  -- Снипеты
  { 'L3MON4D3/LuaSnip', version = 'v2.*', build = 'make install_jsregexp' },
  -- Интеграция с форматерами
  { 'stevearc/conform.nvim', opts = {} },
  -- Интеграция с линтерами
  { 'mfussenegger/nvim-lint', event = { 'BufReadPre', 'BufNewFile' } },
  -- Рендер маркдауна
  {
    'iamcco/markdown-preview.nvim',
    cmd = {
      'MarkdownPreviewToggle',
      'MarkdownPreview',
      'MarkdownPreviewStop',
    },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  -- Языки, которые не поддерживает treesitter
  -- Lama
  { 'vpunch/vim-lama-syntax' },
  -- Promela
  { 'blyoa/vim-promela-syntax' },
  -- Jinja2
  { 'glench/vim-jinja2-syntax' },
  -- GraphQL
  { 'jparise/vim-graphql' },
  -- Отображение буферов
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  -- Автопереключение раскладки
  { 'lyokha/vim-xkbswitch', tag = '0.20', lazy = false },
  -- Список сущностей
  {
    'stevearc/aerial.nvim',
    opts = {},
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  },
}
