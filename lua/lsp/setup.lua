local lsp_installer = require "nvim-lsp-installer"

lsp_installer.setup {
--	ensure_installed = { "sumneko_lua" },

	ui = {
		icons = {
			server_installed = "✔",
			server_pending = "👉",
			server_uninstalled = "❌"
		},
	},

}

local servers = {
	sumneko_lua = require "lsp.lua",
	pyright = require "lsp.python",
}

for name, _ in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found then
		if not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end
end

--lsp_installer.on_server_ready(function(server)
--	local opts = servers[server.name]
--	if opts then
--		opts.on_attach = function(_, bufnr)
--			local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
			-- 绑定快捷键
--			require('keybindings').maplsp(buf_set_keymap)
--		end
--		opts.flags = {
--			debounce_text_changes = 150,
--		}
--		server:setup(opts)
--	end
--end)

local on_attach = function(_, bufnr)
	require('keybindings').maplsp(bufnr)
end

local lsp_flags = {
	debounce_text_changes = 150,
}

require('lspconfig')['pyright'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	settings = servers['pyright'],
}

require('lspconfig')['sumneko_lua'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	settings = servers['sumneko_lua'],
}
