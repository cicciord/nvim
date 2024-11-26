return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua
      "lua-language-server",
      "stylua",

      -- web
      "html-lsp",
      "css-lsp",

      -- C
      "clangd",
      "cmake-language-server",

      -- Rust
      "rust-analyzer",

      -- Go
      "gopls",

      -- Python
      "pyright",
      "black",

      -- Javascript / Typescript
      "typescript-language-server",
      "biome",
      "prettier",
      "tailwindcss-language-server",

      -- Solidity
      "nomicfoundation-solidity-language-server",
      "vscode-solidity-server",

      -- Docker
      "dockerfile-language-server",

      -- Latex
      "texlab",
      "latexindent",

      -- Markdown
      "marksman",
    },
  },
}
