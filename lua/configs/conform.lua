local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang-format" },
    javascript = { "prettier" },
    rust = { "rustfmt" },
    tex = { "latexindent" },
  },
}

require("conform").setup(options)
