return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependenc
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup()
  end,
}

