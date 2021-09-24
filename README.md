# vim-config

This repository contains scripts to help you get started with already configured `vim`.

## Linux

### Prerequisites

The following should be installed:

- cmake
- npm
- ripgrep
- fd-find
- bat

```bash
sudo apt install -y \
  bat \
  cmake \
  fd-find \
  npm \
  ripgrep
```

- install Python 3 provider: `pynvim`

  ```bash
  pip3 install pynvim
  # or
  pip3 install --upgrade pynvim
  ```
- install NodeJs provider: 

  ```bash
  sudo apt npm install -g neovim
  ```

> _Note:_ `bat` & `ripgrep` collide to each other on `Ubuntu 20.04`. Fixed with [dpkg error: trying to overwrite file, which is also in ...](https://askubuntu.com/questions/176121/dpkg-error-trying-to-overwrite-file-which-is-also-in/491086#491086)

#### Node.js

Node version should fulfill the [coc.vim requirements](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#requirements)

See [Installation instructions](https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions)

#### NERD Fonts

Install one of the NERD Fonts so that the [vim-devicon](https://github.com/ryanoasis/vim-devicons) plugin displays the icons properly.

##### Ubuntu

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir -p ~/.local/share/fonts/nerd-fonts
sudo unzip Hack.zip -d ~/.local/share/fonts/nerd-fonts
fc-cache -fv
```

##### Wsl 2

- Download the Hack.zip from [NERD Fonts Download page]
- Install the NERD Fonts
- Change Windows Terminal settings to use the installed NERD Font for the Ubuntu distribution in the snippet below
  ```json
  {
    "font": {
      "face": "Hack NF"
    },
    "guid": "{07b52e3e-de2c-5db4-bd2d-ba144ed6c273}",
    "hidden": false,
    "name": "Ubuntu-20.04",
    "source": "Windows.Terminal.Wsl"
  }
  ```

## Powershell

- [Install Powershell for Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7.1)

- Enable the Powershell extension for CoC

## Recommendations

### Remapping

- CapsLock to Ctrl
  - Windows: use PowerToys to remap
  - Linux: TODO

## References

[Vim Awesome](https://vimawesome.com/)

### Themes

- [https://vimcolorschemes.com/](https://vimcolorschemes.com/)

### Lua

- [NeoVim LSP enhanced](https://alpha2phi.medium.com/neovim-lsp-enhanced-a3d313abee65)

### Examples of setups

- [Ultimate Vim TypeScript setup](https://pragmaticpineapple.com/ultimate-vim-typescript-setup/)

- [https://github.com/nickjj/dotfiles](https://github.com/nickjj/dotfiles)

### Tips and Tricks

- [Change your Vim Cursor from a Block to Line in Normal and insert Mode](https://www.youtube.com/watch?v=FcQjTXLrVUU)
-
