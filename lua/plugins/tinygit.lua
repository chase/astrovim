---@type LazySpec
return {
  "chrisgrieser/nvim-tinygit",
  ft = { "git_rebase", "gitcommit" }, -- so ftplugins are loaded
  dependencies = {
    "stevearc/dressing.nvim",
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>gi"] = { function() require("tinygit").smartCommit() end, desc = "Stage (tinygit)" },
            ["<Leader>gn"] = { function() require("tinygit").smartCommit() end, desc = "New commit" },
            ["<Leader>gP"] = { function() require("tinygit").push { forceWithLease = true } end, desc = "Push" },
          },
        },
      },
    },
  },
  opts = {},
}
