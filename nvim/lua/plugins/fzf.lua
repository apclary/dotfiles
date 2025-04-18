return {
  {
    "ibhagwan/fzf-lua",
    -- The plugin is already installed via LazyExtras
    keys = {
      -- Shows buffer (file) git history
      { "<leader>gf", "<cmd>FzfLua git_bcommits<CR>", desc = "Git buffer commits" },
    },
  },
}
