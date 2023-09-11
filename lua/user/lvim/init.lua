lvim.plugins = require("user.plugins")

local function load(names)
  for _, name in ipairs(names) do
    reload(string.format("user.lvim.%s", name))
  end
end

load {
  "config",
  "cmp",
  "bufferline",
  "treesitter",
  "nvimtree",
  "lualine",
  "matchup",
}

if vim.g.vscode then
  reload "user.lvim.vscode"
end
