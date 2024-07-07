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
- `ccls`
- `clang`
- `stylua`
- `stylelint`
- `ripgrep`
- `ttf-jetbrains-mono-nerd`\*
- `noto-fonts-emoji`\*
- `khaser/sway-vim-kbswitch` (GitHub)\*

\* -- or some alternative

## Configuration

Edit the `lua/project/patch.lua` file if you need a specific configuration of
linters and formatters for your projects

If you are using WezTerm, the output of `$ echo $TERM` should be `wezterm`. If
that's not true, [fix](https://wezfurlong.org/wezterm/config/lua/config/term.html)
it.

## Some commands and shortcuts

|                     | Description                                     |
| ------------------- | ----------------------------------------------- |
| `<C-l>`             | Increase the split size                         |
| `<C-h>`             | Decrease the split size                         |
| `<C-d>`             | Delete the selected buffer in the Telesope menu |
| `<Tab>` / `<S-Tab>` | Navigation in the completion menu               |
| `<C-e>`             | Close the completion menu                       |
| `<CR>`              | Accept the completion                           |
| `<leader>a`         | Open the list of entities                       |
| `:set [no]spell`    | Spell checking                                  |
| `:set [no]paste`    | Insert without auto-indentation                 |
| `C-g`               | File length                                     |
| `\ll`               | LaTeX compilation                               |
| `\lv`               | LaTeX document display                          |
| `<space>e`          | Show the diagnostic message                     |
| `[d` / `]d`         | Go to the diagnostic message                    |
| `<space>q`          | Show diagnostic loclist                         |
| `gD`                | Go to the definition                            |
| `gd`                | Go to the declaration                           |
| `gi`                | Go to the implementation                        |
| `K`                 | Show the entity info                            |
| `<C-s>`             | Show the signature help                         |
| `<space>D`          | Go to the type definition                       |
| `<space>rn`         | Rename the entity under the cursor              |
| `gr`                | Show references to the entity under the cursor  |
| `<space>f`          | Format the working buffer                       |
| `<leader>hb`        | Show the author of the line under the cursor    |
