lvim.plugins = require("user.plugins")

local function load(names)
  for _, name in ipairs(names) do
    if type(name) == "table" then
      if not name["disable"] then
        reload(string.format("user.lvim.%s", name[1]))
      end
    else
      reload(string.format("user.lvim.%s", name))
    end
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
  { "which-key", disable = vim.g.vscode }
}

if vim.g.vscode then
  reload "user.lvim.vscode"
end
