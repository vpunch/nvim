local lspconfig = require 'lspconfig'

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pylsp.setup {
  capabilities = capabilities,
  --on_attach = function(client, bufnr)
  --  require "lsp_signature".on_attach()
  --end,
  settings = { pylsp = { plugins = require('project.config').pylsp_plugins } },
}
lspconfig.tsserver.setup {
  capabilities = capabilities,
}

-- :help vim.diagnostic.*
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- A language server is attached to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- omnifunc cannot be used because nvim-cmp is used

    local opts = { buffer = ev.buf }

    -- :help vim.lsp.*
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- 'ray-x/lsp_signature.nvim' works with a bunch of errors
    vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

vim.diagnostic.config {
  virtual_text = false, -- не влезает со сплитом
  signs = true,
  underline = true, -- без этого не понятно, где в строке ошибка
}

local signs = { Error = '😡', Warn = '🤔', Info = '🤖'}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
