local not_vscode = not vim.g.vscode

local function _(name)
  return require(string.format("user.settings.%s", name))
end

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter-textobjects"
  },

  {
    "MunifTanjim/nui.nvim"
  },

  {
    "keaising/im-select.nvim",
    event = "InsertLeave",
    config = _("im-select"),
  },

  {
    "echasnovski/mini.splitjoin",
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "BufRead",
    config = _("surround"),
  },

  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  {
    "Darazaki/indent-o-matic",
    cond = not_vscode,
    config = _("indent-o-matic"),
  },

  {
    "MTDL9/vim-log-highlighting",
    event = "VeryLazy",
    cond = not_vscode,
  },

  {
    "sindrets/diffview.nvim",
    event = "BufRead",
    cond = not_vscode,
  },
}

return plugins
