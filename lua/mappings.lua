require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- toggle horizontal term
map({ "n", "t" }, "<C-`>", function()
  require("nvchad.term").toggle { pos = "sp", id = "ctoggleTerm" }
end, { desc = "terminal new horizontal term" })

-- split window vertically
map("n", "<C-v>", "<cmd>vsplit<CR>", { desc = "Split window vertically" })

-- close current window
map("n", "<C-x>", "<cmd>close<CR>", { desc = "Quit current window" })

-- comment toggle
map("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })

map(
  "v",
  "<C-/>",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "comment toggle" }
)

-- set spell check
map("n", "<leader>ss", "<cmd>set invspell<CR>", { desc = "toggle spell check" })

-- open diagnostics
map("n", "<leader>dd", function()
  return vim.diagnostic.open_float()
end, { desc = "open diagnostics" })

-- go to definition in new window
map("n", "<leader>gd", "<cmd>vsplit<CR><cmd>lua vim.lsp.buf.definition()<CR>", { desc = "go to definition" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
