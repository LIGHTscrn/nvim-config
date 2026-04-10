# Nvim-Config

My personal Neovim configuration written in Lua, using [Lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.
A fast, modular, and productive setup with LSP, Treesitter, Telescope, and more.

---

## 🛠 Features

- ⚡ Auto-installing plugin management (`lazy.nvim`)
- 🌈 Beautiful theme with `rose-pine` (transparent background)
- 🔍 Fuzzy finding using `Telescope` + `fzf-native`
- 🌳 Syntax highlighting & indentation with `Treesitter`
- 🧠 Language support via `lsp-zero` and `mason`
- 💡 Autocompletion with `nvim-cmp` and snippets
- 🗂️ Quick file navigation with `Harpoon` (v2)
- ⏪ Persistent undo with `undotree`
- 🌿 Git integration with `vim-fugitive`

---

## 📁 Folder Structure

```
~/.config/nvim/
├── init.lua                 # Entry point, leader key, lazy.nvim bootstrap
├── lua/
│   └── pranav/
│       ├── init.lua         # Loads remap & set modules
│       ├── remap.lua        # Keymap definitions
│       ├── set.lua          # Neovim options
│       └── lazyconfig.lua   # Plugin list (lazy.nvim spec)
├── after/
│   └── plugin/
│       ├── colours.lua      # Theme customization
│       ├── fugitive.lua     # Git keymaps
│       ├── harpoon.lua      # Harpoon keymaps
│       ├── lsp.lua          # LSP, Mason, and cmp configuration
│       ├── telescope.lua    # Telescope keymaps
│       ├── treesitter.lua   # Treesitter configuration
│       └── undotree.lua     # Undotree keymaps
└── README.md
```

---

## 🧩 Plugins Used

### 🌐 Core Plugins

| Plugin | Purpose |
|--------|---------|
| [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [rose-pine/neovim](https://github.com/rose-pine/neovim) | Colorscheme |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Faster Telescope backend |
| [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Utility library |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Treesitter support |

### 🧠 LSP and Completion

| Plugin | Purpose |
|--------|---------|
| [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) | Simplified LSP setup |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP server configs |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server installer |
| [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge Mason ↔ LSPConfig |
| [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP source for cmp |
| [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Buffer source |
| [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) | Path source |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Prebuilt snippets |

### 🔧 Utilities

| Plugin | Purpose |
|--------|---------|
| [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file navigation (v2) |
| [mbbill/undotree](https://github.com/mbbill/undotree) | Persistent undo history |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands in Neovim |

### 🎯 Configured LSP Servers

- **TypeScript/JavaScript** — `ts_ls`, `eslint`
- **Lua** — `lua_ls`
- **Rust** — `rust_analyzer`
- **Python** — `pyright`
- **C/C++** — `clangd`

---

## ⌨️ Keymaps

### General

| Keymap | Action |
|--------|--------|
| `<leader>pv` | Open file explorer |
| `<C-d>` / `<C-u>` | Scroll half-page, keep cursor centered |
| `n` / `N` | Search next/prev, keep cursor centered |
| `Y` | Yank to end of line |
| `<C-c>` | Exit insert mode |
| `<leader>y` / `<leader>Y` | Yank to system clipboard |
| `<leader>d` | Delete without yanking |
| `<leader>p` | Paste over selection in visual mode |
| `<leader>s` | Substitute word under cursor |
| `<leader>x` | Make current file executable |
| `<leader>f` | Format buffer via LSP |

### Navigation & Search

| Keymap | Action |
|--------|--------|
| `<leader>pf` | Find files |
| `<C-p>` | Find git files |
| `<leader>ps` | Grep string |
| `<leader>gs` | Open Git status (Fugitive) |

### LSP

| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `K` | Hover documentation |
| `<leader>vws` | Workspace symbols |
| `<leader>vd` | Open diagnostics |
| `[d` / `]d` | Next/prev diagnostic |
| `<leader>vca` | Code action |
| `<leader>vrr` | References |
| `<leader>vrn` | Rename |
| `<C-h>` (insert) | Signature help |

### Quick Fix / Location List

| Keymap | Action |
|--------|--------|
| `<C-k>` / `<C-j>` | Next/prev quickfix |
| `<leader>k` / `<leader>j` | Next/prev location list |

### Harpoon

| Keymap | Action |
|--------|--------|
| `<leader>a` | Add file to Harpoon |
| `<C-e>` | Toggle Harpoon menu |
| `<C-h/t/n/s>` | Navigate to file 1/2/3/4 |

### Utilities

| Keymap | Action |
|--------|--------|
| `<leader>u` | Toggle undotree |
| `<C-f>` | Open tmux sessionizer |
| `<leader>vwm` / `<leader>svwm` | Start/stop vim-with-me |

---

# 🛠️ Linux Installation Guide

This guide walks you through setting up this Neovim configuration built using `lazy.nvim`.

---

## ✅ Prerequisites

| Requirement | Recommended Version | Install Command (Arch Linux) |
|-------------|---------------------|------------------------------|
| [Neovim](https://neovim.io) | `v0.9.0+` | `sudo pacman -S neovim` |
| [Git](https://git-scm.com) | Latest | `sudo pacman -S git` |
| [Nerd Font](https://www.nerdfonts.com/) | Any | Use your preferred font manager |
| [Node.js & npm](https://nodejs.org) | Latest | `sudo pacman -S nodejs npm` |
| Python 3 & pip | Latest | `sudo pacman -S python python-pip` |
| `make` / `gcc` | — | `sudo pacman -S base-devel` (for `fzf-native`) |

> **Note:** `lazy.nvim` is **auto-installed** on first launch — no manual step needed.

---

## Step 1 — 📦 Clone the Repository

```bash
git clone https://github.com/pranavrp-pranav/pranav-nvim ~/.config/nvim
```

## Step 2 — 🚀 Launch Neovim

```bash
nvim
```

Lazy.nvim will automatically install itself and then install all configured plugins.

![Screenshot](https://github.com/LIGHTscrn/Necessary-handlers/blob/489b54667a3c68ab82cbb5395a80b2d1f6782d4b/images/lazy.png)

## Step 3 — 🌳 Install Treesitter Parsers

Inside Neovim, run:

```vim
:TSInstall all
```

Or install specific languages:

```vim
:TSInstall lua javascript typescript python rust
```

---

## That's it. Enjoy! 🎉
