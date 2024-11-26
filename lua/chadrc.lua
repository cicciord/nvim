---@diagnostic disable: missing-fields
-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme_toggle = { "pastelbeans", "one_light" },
  theme = "pastelbeans",

  -- hl_override = {
  --   -- Comment = { italic = true },
  --   -- ["@comment"] = { italic = true },
  --   Normal = { bg = { "black", -10 } },
  -- },

  changed_themes = {
    pastelbeans = {
      base_16 = {
        base00 = "#000000",
      }
    }
  },
}

M.ui = {
  telescope = { style = "bordered" },

  statusline = {
    theme = "default",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor", "file_pos" },
    modules = {
      file_pos = function()
        return "%#St_pos_text# %p%%/%L "
      end,
    },
  },

  tabufline = {
    lazyload = false,
  },
}

return M
