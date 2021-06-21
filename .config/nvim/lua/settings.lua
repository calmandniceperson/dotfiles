vim.o.showtabline = 0
vim.o.termguicolors = true -- True color support
vim.o.wrap = false -- Disable line wrap
vim.o.splitbelow = true -- Put new windows below current
vim.o.splitright = true -- Put new windows right of current

vim.cmd("set sessionoptions-=folds")
-- Check if we need to reload the file when it changed
vim.cmd("au FocusGained * :checktime")

-- syntax
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- show cursor line only in active window
vim.cmd([[
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertEnter,WinLeave * set nocursorline
]])

-- go to last loc when opening a buffer
vim.cmd([[
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]])

-- Relative line numbers
vim.api.nvim_command('set number relativenumber')

vim.bo.autoindent = true
vim.bo.smartindent = true

-- Tab config
vim.bo.tabstop = 4
vim.bo.softtabstop = 8
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.o.smarttab = true

-- Put cursor between brackets
vim.cmd('inoremap {<CR> {<CR>}<C-o>O')

-- Folding
vim.o.foldexpr = "nvim_treesitter#foldexpr()" -- TreeSitter folding
vim.o.foldlevel = 6
vim.o.foldmethod = "expr" -- TreeSitter folding
