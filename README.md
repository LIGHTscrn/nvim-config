🌟 Neovim Setup
This repository contains my personal Neovim (nvim) configuration, optimized for coding, debugging, and productivity. It leverages lazy.nvim for plugin management, with a modular setup for LSP, DAP, and other utilities.

✨ Features

🚀 Lightweight and modular configuration
🛠️ Plugin management via lua/pranav/lazyconfig.lua
🧠 LSP, autocompletion, and debugging support
⌨️ Custom keybindings for efficient workflows
🎨 Minimal and clean UI with the Rose Pine colorscheme


📦 Installation
Prerequisites

🖥️ Neovim 0.9.0 or later
🌐 Git
🔤 A Nerd Font (recommended for icons in plugins like Telescope or Harpoon)
🟢 Node.js and npm (for LSP servers)
🐍 Python 3 (for Python-based plugins, LSP, or DAP)

Steps

Clone the repository:
git clone https://github.com/pranavrp-pranav/pranav-nvim ~/.config/nvim


Install plugins:

Open Neovim with nvim.
Plugins in lua/pranav/lazyconfig.lua will be installed automatically via lazy.nvim.


Optional: Install LSP/DAP servers:

Install language servers via :Mason (e.g., pyright for Python).
For DAP, install debuggers like codelldb or debugpy for Python (after/plugin/dap.lua).


Verify setup:

Run :checkhealth to ensure plugins and dependencies are correctly installed.




🧩 Plugins Used
🌐 Core Plugins

folke/lazy.nvim – Plugin manager
rose-pine/neovim – Colorscheme (after/plugin/colours.lua)
nvim-telescope/telescope.nvim – Fuzzy finder (after/plugin/telescope.lua)
nvim-treesitter/nvim-treesitter – Syntax highlighting and parsing (after/plugin/treesitter.lua)
nvim-treesitter/playground – Treesitter inspection

🧠 LSP and Completion

VonHeikemen/lsp-zero.nvim – Simplified LSP setup (after/plugin/lsp.lua)
neovim/nvim-lspconfig – LSP configurations
williamboman/mason.nvim – LSP server management
williamboman/mason-lspconfig.nvim – Bridges Mason and lspconfig
hrsh7th/nvim-cmp – Autocompletion engine
L3MON4D3/LuaSnip – Snippet engine
rafamadriz/friendly-snippets – Prebuilt snippets

🧪 Debugging

mfussenegger/nvim-dap – Core DAP (after/plugin/dap.lua)
rcarriga/nvim-dap-ui – Debug UI
mfussenegger/nvim-dap-python – Python debugging
nvim-neotest/nvim-nio – Required for dap-ui

🔧 Utilities

ThePrimeagen/harpoon – Quick file navigation (after/plugin/harpoon.lua)
mbbill/undotree – Persistent undo history (after/plugin/undotree.lua)
tpope/vim-fugitive – Git integration (after/plugin/fugitive.lua)


📋 See lua/pranav/lazyconfig.lua for the complete plugin list.


⌨️ Keybindings
Custom keybindings are defined in lua/pranav/remap.lua. Example mappings (assuming <leader> is <Space>):

🌟 <leader>ff: Telescope file finder
🌿 <leader>gg: Git status (via Fugitive)
🔄 <leader>u: Toggle Undotree
⚓ <leader>h: Harpoon menu


🔍 Check lua/pranav/remap.lua for all keybindings.


📂 Directory Structure
~/.config/nvim/
├── after/
│   └── plugin/
│       ├── colours.lua     # 🎨 Rose Pine colorscheme settings
│       ├── dap.lua         # 🧪 DAP configurations
│       ├── fugitive.lua    # 🌿 Fugitive (Git) settings
│       ├── harpoon.lua     # ⚓ Harpoon settings
│       ├── lsp.lua         # 🧠 LSP configurations
│       ├── telescope.lua   # 🔭 Telescope settings
│       ├── treesitter.lua  # 🌳 Treesitter settings
│       └── undotree.lua   # 🔄 Undotree settings
├── lua/
│   └── pranav/
│       ├── init.lua       # 🚀 Core configuration
│       ├── lazyconfig.lua # 🛠️ Plugin management
│       ├── remap.lua      # ⌨️ Keybindings
│       └── set.lua        # ⚙️ General Neovim settings
├── init.lua               # 🚪 Entry point
└── README.md              # 📖 This file


🚀 Getting Started

Clone the repository:git clone https://github.com/pranavrp-pranav/pranav-nvim ~/.config/nvim


Open Neovim:nvim




🛠️ Customization

⚙️ General settings: Edit lua/pranav/set.lua for options like tab width or global settings.
🧩 Plugins: Add or modify plugins in lua/pranav/lazyconfig.lua.
🔧 Plugin configurations: Update files in after/plugin/ for plugin-specific settings.
⌨️ Keybindings: Modify lua/pranav/remap.lua to customize mappings.


📝 Notes

🐧 Optimized for Unix-like systems (Linux/macOS). For Windows, use ~/AppData/Local/nvim.
✅ Run :checkhealth to troubleshoot issues.
🤝 Contributions or suggestions are welcome!


📜 License
MIT License
