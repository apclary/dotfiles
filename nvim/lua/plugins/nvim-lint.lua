return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        cmd = "markdownlint-cli2",
        -- Override default markdownlint-cli2 config
        args = { "--config", vim.fn.expand("~/.markdownlint-cli2.yaml"), "--" },
      },
    },
  },
}
