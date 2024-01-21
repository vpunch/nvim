local g = vim.g

g.XkbSwitchEnabled = 1

g.XkbSwitchLib =
  vim.env.HOME .. '/build/sway-vim-kbswitch/target/release/libswaykbswitch.so'
