return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"

    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.mode(),
      status.component.git_branch {
        hl = { fg = "fg", bg = "bg" },
      },
      status.component.file_info(),
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.builder(status.utils.setup_providers({
        ruler = {},
        percentage = { padding = { left = 1 } },
        scrollbar = { padding = { left = 1 }, hl = { fg = "scrollbar" } },
        surround = { separator = "right", color = "nav_bg" },
        hl = status.hl.get_attributes "nav",
        update = { "CursorMoved", "CursorMovedI", "BufEnter" },
      }, { "ruler" })),
      status.component.mode { surround = { separator = "right" } },
    }
  end,
}
