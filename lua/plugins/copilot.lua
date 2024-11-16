return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept_word = "<C-l>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
      },
    }
  end,
}
