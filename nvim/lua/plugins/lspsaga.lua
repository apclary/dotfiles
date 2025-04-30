return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      -- disable lightbulb code action for markdown files
      require("lspsaga").setup({ lightbulb = { ignore = { ft = { "markdown" } } } })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
