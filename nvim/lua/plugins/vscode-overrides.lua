-- Disable plugins that conflict with VSCode
if vim.g.vscode then
  return {
    { "akinsho/bufferline.nvim", enabled = false }, -- VSCode has tabs
    { "nvim-lualine/lualine.nvim", enabled = false }, -- VSCode has status bar
    { "echasnovski/mini.starter", enabled = false }, -- VSCode has welcome screen
    { "echasnovski/mini.animate", enabled = false }, -- VSCode has animations
    { "echasnovski/mini.indentscope", enabled = false }, -- VSCode has indent guides
    { "folke/noice.nvim", enabled = false }, -- VSCode handles notifications
    { "folke/which-key.nvim", enabled = false }, -- VSCode has command palette
    { "ibhagwan/fzf-lua", enabled = false }, -- VSCode has fuzzy finder
    { "MagicDuck/grug-far.nvim", enabled = false }, -- VSCode has search/replace
    { "folke/snacks.nvim", enabled = false }, -- Dashboard/file explorer - VSCode handles
    { "vague2k/vague.nvim", enabled = false }, -- VSCode themes
    { "lewis6991/gitsigns.nvim", enabled = false }, -- VSCode has git integration
    { "folke/trouble.nvim", enabled = false }, -- VSCode has problems panel
    { "folke/todo-comments.nvim", enabled = false }, -- VSCode has TODO extensions
    { "folke/flash.nvim", enabled = false }, -- VSCode has Go to Line/Symbol
  }
end

return {}
