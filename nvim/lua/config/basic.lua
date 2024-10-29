require("util")

vim.g.mapleader = ","

imap("jj", "<Esc>")

nmap("<leader>w", ":w!<cr>")
nmap("<leader>s", ":Neotree toggle<cr>")

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.lbr = true
vim.opt.tw = 120
vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = true

nmap("<C-j>", "<C-W>j")
nmap("<C-k>", "<C-W>k")
nmap("<C-h>", "<C-W>h")
nmap("<C-l>", "<C-W>l")
