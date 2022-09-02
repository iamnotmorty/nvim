local status, lualine = pcall(require, 'lualine')
if not status then
	vim.notify("No such lualine")
	return
end

lualine.setup({
	options = {
		theme = 'auto',
	},
	extensions = { 'nvim-tree', 'toggleterm' }
})
