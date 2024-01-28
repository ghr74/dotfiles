return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "zig",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}
