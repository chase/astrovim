---@type LazySpec
return {
  {
    name = "everforest",
    dir = "~/OSS/everforest",
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_sign_column_background = "grey"
      vim.g.everforest_enable_italic = 0
      vim.g.everforest_disable_italic_comment = 1
      vim.g.everforest_diagnostic_virtual_text = "colored"
      vim.g.everforest_show_eob = 0
      vim.g.everforest_ui_contrast = "medium"
      vim.g.everforest_better_performance = 1
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("git-conflict").setup {
        default_mappings = {
          ours = "co",
          theirs = "ct",
          both = "cb",
          none = "c0",
          next = "]x",
          prev = "[x",
        },
        highlights = {
          ---@diagnostic disable-next-line: assign-type-mismatch
          incoming = nil,
          ---@diagnostic disable-next-line: assign-type-mismatch
          current = nil,
        },
      }
    end,
  },
}
