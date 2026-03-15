lsp_servers = {
	'bashls',
	'cssls',
	'html',
	'jsonls',
	'arduino_language_server',
	'eslint',
	'marksman',
	'rust_analyzer',
	'clangd',
	'lua_ls',
	'tinymist',
	'ty',
	'taplo',
	'yamlls',
	'texlab',
	'yamlls',
	'taplo',
	'esbonio',
	'dockerls',
	'ruff',
	'htmx',
	'jinja_lsp',
	--'gleam'
}

vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}

return {
	{
	  'chomosuke/typst-preview.nvim',
	  ft = 'typst',
	  version = '1.*',
	  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = lsp_servers
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			for _, server in ipairs(lsp_servers) do
				require("lspconfig")[server].setup({})
			end
		end,
	},
}
