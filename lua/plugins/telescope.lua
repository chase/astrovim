return {
  "nvim-telescope/telescope.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts) end,
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
