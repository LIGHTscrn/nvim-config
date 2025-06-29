
# Nvim-Config
My personal Neovim configuration written in Lua, using [Lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.  
A fast, modular, and productive setup with LSP, DAP, Treesitter, Telescope, and more.

---

## 🛠 Features

- ⚡ Lazy-loaded plugin management (`lazy.nvim`)
- 🌈 Beautiful theme with `rose-pine`
- 🔍 Fuzzy finding using `Telescope`
- 🌳 Syntax highlighting & code structure with `Treesitter`
- 🧠 Language support via `lsp-zero` and `mason`
- 💡 Autocompletion with `nvim-cmp` and snippets
- 🗂️ Quick file nav with `Harpoon`
- 🧪 Debugging powered by `nvim-dap` and UI
- ⏪ Persistent undo with `undotree`
- 🌿 Git integration with `vim-fugitive`

---

## Folder structure
~/.config/nvim/\
├── init.lua\
├── lua/\
│ └── pranav/\
│ ├── init.lua\
│ ├── remap.lua\
│ ├── lazyconfig.lua\
│ └── ...\
├── after/\
│ └── plugin/\
│   ├── colours.lua\
│   ├── dap.lua\
│   ├── fugitive.lua\
│   ├── harpoon.lua\
│   ├── lsp.lua\
│   ├── telescope.lua\
│   ├── treesitter.lua\
│   └── undotree.lua\

---

## 🧩 Plugins Used

### 🌐 Core Plugins

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) – Plugin manager
- [rose-pine/neovim](https://github.com/rose-pine/neovim) – Colorscheme
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) – Fuzzy finder
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – Treesitter support
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground) – Treesitter inspection

### 🧠 LSP and Completion

- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) – Simplified LSP setup
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – Autocompletion engine
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) – Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) – Prebuilt snippets

### 🧪 Debugging

- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) – Core DAP
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) – Debug UI
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python) – Python support
- [nvim-neotest/nvim-nio](https://github.com/nvim-neotest/nvim-nio) – Required for dap-ui

### 🔧 Utilities

- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) – Quick file navigation
- [mbbill/undotree](https://github.com/mbbill/undotree) – Persistent undo history
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) – Git commands in Neovim

---

# 🛠️ Linux Installation Guide

This guide walks you through setting up [nvim-config](https://github.com/LIGHTscrn/nvim-config), a minimal yet powerful Neovim configuration built using `lazy.nvim`.

---

## ✅ Prerequisites

Before you begin, ensure you have the following installed:

| Requirement            | Recommended Version | Install Command (Arch Linux)         |
|------------------------|---------------------|--------------------------------------|
| [Neovim](https://neovim.io)       | `v0.9.0+`           | `sudo pacman -S neovim`              |
| [Git](https://git-scm.com)         | Latest              | `sudo pacman -S git`                 |
| [Nerd Font](https://www.nerdfonts.com/) | Any                | Use your preferred font manager      |
| [Node.js & npm](https://nodejs.org) | Latest              | `sudo pacman -S nodejs npm`          |
| Python 3 & pip         | Latest              | `sudo pacman -S python python-pip`   |

---

## Step 1

## 📦 Clone the Repository into nvim folder

```bash
git clone https://github.com/pranavrp-pranav/pranav-nvim ~/.config/nvim
```
## Step 2

## Install plugins 

```bash
cd ~/.config/nvim
```
```bash
nvim .
```
#### You should see lazy install itself
![Screenshot](https://github.com/LIGHTscrn/Necessary-handlers/blob/489b54667a3c68ab82cbb5395a80b2d1f6782d4b/images/lazy.png)

---

## That's it. Enjoy! 🎉


