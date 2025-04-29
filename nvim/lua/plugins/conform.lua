return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      markdown = { "prettier" },
      java = { "google-java-format" },
    },
    formatters = {
      prettier = {
        -- These are extra CLI args to control Prettier behavior
        prepend_args = { "--prose-wrap", "always" },
      },
    },
  },
}
