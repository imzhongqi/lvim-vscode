lvim.plugins = require("user.plugins")

reload "user.lvim.config"
reload "user.lvim.treesitter"
reload "user.lvim.nvimtree"
reload "user.lvim.lualine"

if vim.g.vscode then
  require "user.lvim.vscode"
end
