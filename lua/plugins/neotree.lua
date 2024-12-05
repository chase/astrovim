return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    -- git is available through <Leader>gg, explorer through <Leader>e or <Leader>o
    opts.source_selector.winbar = false

    local symbols = opts.default_component_configs.git_status.symbols
    symbols.added = ""
    symbols.modified = ""
    symbols.unstaged = ""
    symbols.untracked = symbols.unstaged
    symbols.deleted = ""

    opts.popup_border_style = "rounded"
  end,
}
