-- 可能出现的"未找到折叠"的错误的解决方案
-- vim.api.nvim_create_autocmd({'BufEnter', 'BudAdd', 'BufNew', 'BufNewFile', 'BufWinEnter'}, {
--	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
--	callback = function()
--		vim.opt.foldmethod = 'expr'
--		vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
--	end
--})	

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "lua", "rust", "python", "go" },

	sync_install = false,

	auto_install = true,

	ignore_install = {},

	highlight = {
		enable = true,

		disable = {},

		additional_vim_regex_highlighting = false,
	}
}
