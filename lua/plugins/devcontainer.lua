require('devcontainer').setup {
  attach_mounts = {
    neovim_config = {
      enabled = true,
      options = { 'readonly' },
    },
  },
}
