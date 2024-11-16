-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme_toggle = { "ayu_dark", "one_light" },
  theme = "ayu_dark",

  hl_override = {
    -- Comment = { italic = true },
    -- ["@comment"] = { italic = true },
    Normal = { bg = { "black", -10 } },
  },
}

M.ui = {
  telescope = { style = "bordered" },

  statusline = {
    theme = "default",
  },

  tabufline = {
    lazyload = false,
  },
}

return M
