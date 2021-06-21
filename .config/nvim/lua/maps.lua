-------------------------------------------------------------------------------
-- barbar
-- Move to previous/next
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferNext<CR>',  { noremap = true, silent = true })

-- Re-order to previous/next
vim.api.nvim_set_keymap('n', '<A-<>', ':BufferMovePrevious<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A->>', ':BufferMoveNext<CR>',  { noremap = true, silent = true })

-- Goto buffer in position
vim.api.nvim_set_keymap('n', '<A-1>', ':BufferGoto 1<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferGoto 2<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferGoto 3<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferGoto 4<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferGoto 5<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferGoto 6<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferGoto 7<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferGoto 8<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferGoto 9<CR>',  { noremap = true, silent = true })

-- Close buffer
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>',  { noremap = true, silent = true })

-- Magic buffer-picking mode
vim.api.nvim_set_keymap('n', '<C-s>', ':BufferPick<CR>',  { noremap = true, silent = true })

-- Sort automatically by...
vim.api.nvim_set_keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>',  { noremap = true, silent = true })

-- barbar end
-------------------------------------------------------------------------------



-------------------------------------------------------------------------------
-- lspsaga.nvim
vim.api.nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', ':Lspsaga preview_definition<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gs', ':Lspsaga signature_help<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', ':Lspsaga rename<CR>',  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>cd', ':Lspsaga show_line_diagnostics<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[e', ':Lspsaga diagnostic_jump_next<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>',  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':<C-U>Lspsaga range_code_action<CR>',  { noremap = true, silent = true })
-------------------------------------------------------------------------------



-------------------------------------------------------------------------------
-- Format
vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true})
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true})
-------------------------------------------------------------------------------
