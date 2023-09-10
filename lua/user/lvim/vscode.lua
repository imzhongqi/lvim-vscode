lvim.builtin.alpha.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lualine.active = false
lvim.builtin.breadcrumbs.active = false

lvim.builtin.indentlines.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.gitsigns.active = false
lvim.builtin.nvimtree.active = false
lvim.builtin.dap.active = false
lvim.builtin.terminal.active = false
lvim.builtin.lir.active = false

lvim.builtin.which_key.active = false
lvim.builtin.telescope.active = false
lvim.builtin.project.active = false

lvim.builtin.cmp = nil
lvim.builtin.luasnip.sources.friendly_snippets = false

lvim.builtin.treesitter.rainbow.enable = false
lvim.builtin.treesitter.autotag.enable = false
lvim.builtin.treesitter.highlight.enable = false
lvim.builtin.treesitter.textsubjects.enable = false
lvim.builtin.treesitter.indent.enable = false

vim.schedule(function()
    vim.api.nvim_set_hl(0, "EndOfBuffer", {})
end)

local lkmaps = require("lvim.keymappings")
lkmaps.clear(lkmaps.load_defaults())