local not_vscode = not vim.g.vscode

local function _(name)
  return require(string.format("user.settings.%s", name))
end

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter-textobjects"
  },

  {
    "andymass/vim-matchup",
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

  { "tpope/vim-repeat" },

  {
    "ggandor/flit.nvim",
    dependencies = {
      "ggandor/leap.nvim",
      "tpope/vim-repeat",
    },
    config = _("flit")
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

  {
    "olexsmir/gopher.nvim",
    cond = not_vscode,
  },

  {
    "leoluz/nvim-dap-go",
    cond = not_vscode,
  }
}

return plugins
