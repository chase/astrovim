local colors_icon = "󱓻 "

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "js-everts/cmp-tailwind-colors",
      opts = function(_, opts)
        opts.format = function(itemColor)
          return {
            fg = itemColor,
            bg = nil,
            text = colors_icon,
          }
        end
      end,
    },
    optional = true,
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        if item.kind == "Color" then
          item = require("cmp-tailwind-colors").format(entry, item)
          if item.kind == "Color" then return format_kinds(entry, item) end
          return item
        else
          local kind = item.kind
          item.menu = " " .. kind
          item.menu_hl_group = "CmpItemKind" .. (kind or "")
        end
        format_kinds(entry, item)
        if item.kind ~= "Color" then item.kind = item.kind .. " " end
        return item
      end

      opts.formatting.fields = { "kind", "abbr", "menu" }
      ---@module 'cmp'
      ---@type cmp.WindowOptions
      opts.window.completion = {
        scrollbar = false,
        side_padding = 1,
        winhighlight = "Normal:NormalFloat,CursorLine:Visual,Search:Visual",
        border = "none",
      }

      ---@module 'cmp'
      ---@type cmp.DocumentationWindowOptions
      opts.window.documentation = {
        border = "single",
        winhighlight = "Normal:Normal,FloatBorder:Comment",
      }
    end,
  },
}
