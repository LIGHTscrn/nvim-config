vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartWimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

vim.keymap.set("x","<leader>p", "\"_dP")

vim.keymap.set("n","<leader>y", "\"+y")
vim.keymap.set("v","<leader>y", "\"+y")
vim.keymap.set("n","<leader>Y", "\"+Y")

vim.keymap.set("n","<leader>d", "\"_d")
vim.keymap.set("v","<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n","Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format { async = true }
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x  %<CR>", { silent = true })


-- Map F5 to save and run the current Python file
vim.keymap.set('n', '<F5>', ':w<CR>:!python %<CR>', { noremap = true, silent = true })

-- for going to normal mode 
vim.keymap.set('i', "jj",'<Esc>',{ noremap = true})

-- for debugpy launch dapui
vim.keymap.set('n',"<F6>","<cmd>lua require'dapui'.toggle()<CR>")
vim.keymap.set('i',"<F6>","<cmd>lua require'dapui'.toggle()<CR>")

    --set breakpoints
vim.keymap.set('n',"<leader>b","<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('i',"<leader>b","<cmd>lua require'dap'.toggle_breakpoint()<CR>")

    --set stepover and continue

vim.keymap.set('n',"<F10>","<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set('n',"<F9>","<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set('n',"<F8>","<cmd>lua require'dap'.step_out()<CR>")
vim.keymap.set('n',"<F7>","<cmd>lua require'dap'.continue()<CR>")
