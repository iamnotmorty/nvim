-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 简化函数
local map = vim.keymap.set
-- 复用 opt 参数
local opt = { noremap = true, silent = true }

-- 函数映射规则 map('模式', '按键', '映射为', opt)
-- '映射为'是指可以是多个按键组合，比如'8l'就是连续点击8和l,再比如':q<CR>'表示退出。注'<CR>'就是回车键。
-- common
map('n', '<leader>s', ':w<CR>', opt)

-- nvim-tree
map('n', '<leader>m', ':NvimTreeToggle<CR>', opt)

-- lsp
map('n', '<leader>e', vim.diagnostic.open_float, opt)
map('n', '<leader>h', vim.diagnostic.goto_prev, opt)
map('n', '<leader>l', vim.diagnostic.goto_next, opt)

-- bufferline
-- 左右tab切换
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>w', ':Bdelete!<CR>', opt)

local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	-- rename
	map('n', '<leader>rn', vim.lsp.buf.rename, bufopts)	
	-- code action
	map('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
	-- go xx	
	map('n', 'gD', vim.lsp.buf.declaration, bufopts)
	map('n', 'gd', vim.lsp.buf.definition, bufopts)
	map('n', 'gh', vim.lsp.buf.hover, bufopts)
	map('n', 'gi', vim.lsp.buf.implementation, bufopts)
	map('n', 'gr', vim.lsp.buf.references, bufopts)

end

return pluginKeys





