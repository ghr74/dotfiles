return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            find = "fewer lines",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
