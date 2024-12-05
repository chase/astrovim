---@type LazySpec
return {
  "chrisgrieser/nvim-tinygit",
  ft = { "git_rebase", "gitcommit" }, -- so ftplugins are loaded
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim",
    "rcarriga/nvim-notify",
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>gn"] = { function() require("tinygit").smartCommit() end, desc = "New commit" },
            ["<Leader>gP"] = {
              function() require("tinygit").push { forceWithLease = true, createGitHubPr = true } end,
              desc = "Push",
            },
          },
        },
      },
    },
  },
  config = function()
    require("tinygit").setup {
      commitMsg = {
        -- commitPreview = false,
      },
      backdrop = {
        enabled = false,
      },
    }
  end,
}
