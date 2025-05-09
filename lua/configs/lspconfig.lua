-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  -- web
  "html",
  "cssls",

  -- C
  "clangd",
  "cmake",

  -- Rust
  "rust_analyzer",

  -- Go
  "gopls",

  -- Python
  "pyright",

  -- Javascript / Typescript
  "tailwindcss",
  "biome",

  -- Solidity
  -- "solidity_ls",
  -- "solidity",

  -- Docker
  "dockerls",

  -- Latex
  "texlab",

  -- Markdown
  "marksman",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- JSON
lspconfig.jsonls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
}

-- YAML
lspconfig.yamlls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
    },
  },
}

-- Javascript / Typescript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  cmd = { "typescript-language-server", "--stdio" },
}
-- Solidity
lspconfig.solidity_ls_nomicfoundation.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { "solidity" },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
}
