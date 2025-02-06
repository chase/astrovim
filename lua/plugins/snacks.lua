return {
  "folke/snacks.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local get_icon = require("astroui").get_icon
        local maps = opts.mappings
        maps.n["<Leader>s"] = { desc = get_icon("Search", 1, true) .. "Search" }
        maps.n["<Leader>st"] = { function() Snacks.picker.grep() end, desc = "Text" }
        maps.n["<Leader>sf"] = { function() Snacks.picker.files() end, desc = "Files" }
        maps.n["<Leader>ft"] = { function() Snacks.picker.grep() end, desc = "Text" }
        maps.n["<Leader>ff"] = { function() Snacks.picker.files() end, desc = "Files" }
        maps.n["<Leader>s<CR>"] = { function() Snacks.picker.resume() end, desc = "Resume previous search" }
      end,
    },
  },
  ---@type snacks.Config
  opts = {
    picker = {
      -- your picker configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
