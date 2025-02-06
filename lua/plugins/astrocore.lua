-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 2, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = false,
      update_in_insert = false,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        winblend = 10,
        clipboard = "",
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        formatoptions = {
          q = true, -- continue comments with gq"
          c = true, -- Auto-wrap comments using textwidth
          r = false, -- Continue comments when pressing Enter
          o = false, -- same as above but on O/o
          n = true, -- Recognize numbered lists
          t = false, -- autowrap lines using text width value
          j = true, -- remove a comment leader when joining lines.
          -- Only break if the line was not longer than 'textwidth' when the insert
          -- started and only at a white character that has been entered during the
          -- current insert command.
          l = false,
          v = false,
        },
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        ["<Leader>v"] = { "<cmd>vsplit<cr>", desc = "Vsplit" },

        -- navigate buffer tabs
        ["H"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["L"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        ["<Leader>gg"] = {
          function()
            require("neo-tree.command").execute {
              action = "focus",
              source = "git_status",
              position = "right",
            }
          end,
          desc = "Git",
        },

        ["<Leader>h"] = {},

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        ["<leader>ff"] = false,
        ["<leader>ft"] = false,
      },
    },
  },
}
