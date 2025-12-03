return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      diagnostics = {
        virtual_text = false,
        virtual_lines = true,
      },
      servers = {
        kotlin_language_server = false, -- Disable problematic server
        kotlin_lsp = {}, -- Use JetBrains' kotlin-lsp instead
      },
    },
  },
}
