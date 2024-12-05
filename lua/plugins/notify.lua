return {
  "rcarriga/nvim-notify",
  opts = function(_, opts)
    opts.top_down = false
    opts.max_width = 80
    opts.render = "minimal"
    opts.stages = "static"
    opts.background_colour = "FloatShadow"
  end,
}
