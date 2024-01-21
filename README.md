# nvim

Simple Neovim configuration for programming and more

## Installation

Run this:

```
$ cd ~/.config && git clone
$ cp nvim/patch.lua nvim/lua/project/
```

### Dependencies

If you are ArchLinux user, you may need the following packages:

- `neovim`
- `python-pynvim`
- `wezterm`\*
- `python-lsp-server`
- `python-rope`
- `python-lsp-ruff` (AUR)
- `python-pylsp-mypy`
- `typescript-language-server`
- `eslint_d` (AUR)
- `prettierd` (AUR)
- `stylua`
- `stylelint`
- `ripgrep`
- `ttf-jetbrains-mono-nerd`\*
- `noto-fonts-emoji`\*
- `khaser/sway-vim-kbswitch` (GitHub)\*

\* -- or some alternative

## Configuration

Edit the `lua/project/patch.lua` file if you need a specific configuration of
linters and formatters for your project

If you are using WezTerm, the output of `$ echo $TERM` should be `wezterm`. If
this is not the case, then add `term = 'wezterm'` to the config file.

## Some commands and shortcuts

|                     | Description                       |
| ------------------- | --------------------------------- |
| `<C-l>`             | Increase the split size           |
| `<C-h>`             | Decrease the split size           |
| `<C-d>`             | Delete a buffer in Telescope      |
| `<Tab>` / `<S-Tab>` | Navigation in the completion menu |
| `<C-e>`             | Close the completion menu         |
| `<CR>`              | Accept the completion             |
| `<leader>a`         | Open the list of entities         |
| `:set [no]spell`    |                                   |
| `:set [no]paste`    | Insert without auto-indentation   |
| `C-g`               | File length                       |
| `\ll`               |                                   |
| `\lv`               |                                   |
| `<space>e`          |                                   |
| `[d` / `]d`         |                                   |
| `<space>q`          |                                   |
| `gD`                |                                   |
| `gd`                |                                   |
| `gi`                |                                   |
| `K`                 |                                   |
| `<C-s>`             |                                   |
| `<space>D`          |                                   |
| `<space>rn`         |                                   |
| `gr`                |                                   |
