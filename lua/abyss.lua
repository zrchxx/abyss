local util = require("abyss.util")

local M = {}

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "abyss"

  local theme = require("abyss.theme").set_colors()
  for group, color in pairs(theme) do
    util.highlight(group, color)
  end
end

return M
