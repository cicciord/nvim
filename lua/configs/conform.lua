local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "prettier" },
    css = { "prettier" },

    c = { "clangd" },

    python = { "black" },

    -- json = { "biome" },
    -- javascript = { "biome" },
    -- javascriptreact = { "biome" },
    -- typescript = { "biome" },
    -- typescriptreact = { "biome" },
    json = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    tex = { "latexindent" },

    markdown = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
