return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.map").setup()
    end,
    keys = {
      {
        "<leader>mt",
        function()
          MiniMap.toggle()
        end,
        desc = "MiniMap toggle",
      },
      {
        "<leader>mf",
        function()
          MiniMap.refresh()
        end,
        desc = "MiniMap refresh",
      },
    },
  },
}
