local options = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web
    "html-lsp",
    "css-lsp",

    -- C
    "clangd",

    -- Rust
    "rust-analyzer",

    -- Go
    "gopls",

    -- Python
    "pyright",
    "black",

    -- JSON
    "json-lsp",

    -- YAML
    "yaml-language-server",

    -- Javascript / Typescript
    "typescript-language-server",
    "biome",
    "prettier",
    "tailwindcss-language-server",

    -- Solidity
    "nomicfoundation-solidity-language-server",
    "vscode-solidity-server",
    -- "solidity",

    -- Docker
    "dockerfile-language-server",

    -- Latex
    "texlab",
    "latexindent",

    -- Markdown
    "marksman",
  },
}

return options
