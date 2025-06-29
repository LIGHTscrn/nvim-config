vim.g.mapleader = " "
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup("pranav.lazyconfig")

require("pranav") -- loads pranav/init.lua

print("hello from init.lua")

