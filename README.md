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

- stylua
- prettierd (AUR)
- ripgrep
- ttf-jetbrains-mono-nerd*
- python-pynvim
- neovim
- wezterm*
- 

\* -- recommended

## Configuration

Edit the `lua/project/patch.lua` file if you need a specific configuration of
linters and formatters for your project

If you are using WezTerm, the output of `$ echo $TERM` should be `wezterm`. If
this is not the case, then add `term = 'wezterm'` to the config file.

## Some commands and shortcuts

| | |
|---|---|
| `:set [no]spell` | |
| `:set [no]paste` | Insert without auto-indentation |
| `C-g` | File length |
| `\ll` | |
| `\lv` | |
| `<space>e` | |
| `[d` / `]d` | |
| `<space>q` | |
| `gD` | |
| `gd` | |
| `gi` | |
| `K` | |
| `<C-s>` | |
| `<space>wa` | |
| `<space>wr` | |
| `<space>D` | |
| `<space>rn` | |
| `<space>ca` | |
| `<space>wl` | |
| `<space>D` | |
