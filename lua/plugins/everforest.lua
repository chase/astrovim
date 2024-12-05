return {
  "neanias/everforest-nvim",
  lazy = false,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("everforest").setup {
      italics = true,
      show_eob = false,
      sign_column_background = "grey",
      disable_italic_comments = true,
      diagnostic_virtual_text = "coloured",
      background = "medium",
      ui_contrast = "low",
      float_style = "dim",
      transparent_background_level = 1,
      on_highlights = function(hl, p)
        hl.CursorLine = {}

        hl.String = { link = "Yellow" }
        hl["@string"] = { link = "String" }

        hl["@property"] = { link = "Fg" }
        hl["@variable.member"] = { link = "Blue" }
        hl["@keyword"] = { link = "Orange" }
        hl["@keyword.coroutine"] = { link = "Red" }
        hl["@keyword.operator"] = { link = "Red" }
        hl["@type"] = {}
        hl["@lsp.type.variable"] = {}
        hl["@lsp.type.property"] = {}
        hl["@lsp.type.enumMember"] = { link = "Blue" }
        hl["@lsp.typemod.property.declaration"] = { link = "Fg" }
        hl["@type.builtin"] = { link = "Blue" }
        hl["@lsp.typemod.property.defaultLibrary"] = { link = "@type.builtin" }
        hl["@field"] = { link = "Fg" }
        hl["@namespace"] = { link = "Aqua" }
        hl["@tag.builtin.tsx"] = { link = "Orange" }
        hl["@tag.tsx"] = { link = "Blue" }
        hl["@tag.attribute.tsx"] = { link = "Orange" }
        hl["@markup.tsx"] = {}
        hl["@property.json"] = { link = "Green" }
        hl["@string.json"] = { link = "Fg" }

        hl["Constant"] = { link = "Aqua" }
        hl["@lsp.mod.readonly"] = {}
        hl["@punctuation.special"] = {}
        hl["@none"] = {}
        hl["SpecialChar"] = {}

        hl["@keyword.import.tsx"] = { link = "Purple" }

        hl.FloatBorder = { fg = p.grey2, bg = p.bg0, blend = 5 }
        hl.FloatTitle = { fg = p.none, bg = p.bg_dim, blend = 0 }
        hl.FloatShadow = { fg = p.grey2, bg = p.bg0, blend = 0 }
        hl.NormalFloat = { fg = p.none, bg = p.bg_dim, blend = 5 }
        hl.NormalNC = { fg = p.none, bg = p.bg0, blend = 0 }

        -- Change NeoTree colors
        hl.NeoTreeDirectoryIcon = { link = "Green" }
        hl.NeoTreeDirectoryName = { link = "Fg" }
        hl.NeoTreeFileNameOpened = { link = "Yellow" }
        hl.NeoTreeRootName = { link = "Yellow" }
        hl.NeoTreeGitModified = { fg = p.fg, bg = p.bg_blue }
        hl.NeoTreeGitUntracked = { fg = p.fg, bg = p.bg_yellow }
        hl.NeoTreeGitDeleted = { fg = p.fg, bg = p.bg_red }
        hl.NeoTreeGitConflict = { fg = p.red, bg = p.bg_red }

        -- Selection background gray
        hl.Visual = { fg = p.none, bg = p.bg3 }
        hl.VisualNOS = { fg = p.none, bg = p.bg3 }

        -- Adjust VirtualText colors
        hl.VirtualTextError = { fg = p.red, bg = p.bg_red }
        hl.VirtualTextWarning = { fg = p.yellow, bg = p.bg_yellow }
        hl.VirtualTextInfo = { fg = p.blue, bg = p.bg_blue }
        hl.VirtualTextHint = { fg = p.green, bg = p.bg_green }

        -- Fix signs
        hl.RedSign = { fg = p.red, bg = p.bg1 }
        hl.OrangeSign = { fg = p.orange, bg = p.bg1 }
        hl.YellowSign = { fg = p.yellow, bg = p.bg1 }
        hl.GreenSign = { fg = p.green, bg = p.bg1 }
        hl.AquaSign = { fg = p.aqua, bg = p.bg1 }
        hl.BlueSign = { fg = p.blue, bg = p.bg1 }
        hl.PurpleSign = { fg = p.purple, bg = p.bg1 }
      end,
      colours_override = function(p)
        p.bg_visual = p.bg3
        p.bg_dim = "#272e33"
      end,
    }
  end,
}
