local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = {
	"clangd",
	"tsserver",
	"ltex",
	"rust_analyzer",
	"matlab_ls",
  "solidity",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.clangd.setup({
	cmd = { "clangd", "--offset-encoding=utf-16" },
})

lspconfig.tsserver.setup({
	cmd = { "typescript-language-server", "--stdio" },
})

lspconfig.matlab_ls.setup({
	cmd = { "matlab-language-server", "--stdio" },
	filetypes = { "matlab" },
	settings = {
		matlab = {
			installPath = "/opt/matlab/",
		},
	},
	single_file_support = true,
})

lspconfig.solidity.setup({
  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { "solidity" },
--   root_dir = lspconfig.util.find_git_ancestor,
--   single_file_support = true,
})
