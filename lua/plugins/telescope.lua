return {
  "nvim-telescope/telescope.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local get_icon = require("astroui").get_icon
        local maps = opts.mappings
        maps.n["<Leader>s"] = { desc = get_icon("Search", 1, true) .. "Search" }
        maps.n["<Leader>st"] = { function() require("telescope.builtin").live_grep() end, desc = "Text" }
        maps.n["<Leader>sf"] = { function() require("telescope.builtin").fd() end, desc = "Files" }
        maps.n["<Leader>s<CR>"] =
          { function() require("telescope.builtin").resume() end, desc = "Resume previous search" }
      end,
    },
  },
  opts = function(_, opts)
    local actions = require "telescope.actions"
    opts.defaults.mappings.i["<Esc>"] = actions.close
    opts.defaults.mappings.i["<C-c>"] = false
    opts.defaults.winblend = 0
    opts.pickers = {
      find_files = {
        find_command = {
          "rg",
          "--type=all",
          "--ignore",
          "--files",
        },
      },
    }
    opts.defaults.file_ignore_patterns = {
      "vendor/*",
      "%.lock",
      "__pycache__/*",
      "%.sqlite3",
      "%.ipynb",
      "node_modules/*",
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.svg",
      "%.otf",
      "%.ttf",
      ".git/",
      "%.webp",
      ".dart_tool/",
      ".github/",
      ".gradle/",
      ".idea/",
      ".settings/",
      ".vscode/",
      "__pycache__/",
      "build/",
      "env/",
      "gradle/",
      "node_modules/",
      "target/",
      "%.svg",
      "%.pdb",
      "%.dll",
      "%.class",
      "%.exe",
      "%.jpg",
      "%.png",
      "%.cache",
      "%.ico",
      "%.pdf",
      "%.dylib",
      "%.jar",
      "%.docx",
      "%.doc",
      "%.met",
      "%.lockb",
    }
  end,
}
