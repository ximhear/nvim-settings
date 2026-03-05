-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.relativenumber = false
-- smartcase: LazyVim 기본값 사용 (ignorecase + smartcase = true)

-- Soft wrap
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.showbreak = "↪ "

opt.swapfile = false
