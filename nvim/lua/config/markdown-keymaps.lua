-- Markdown editing keymaps
local map = vim.keymap.set

-- Register which-key group for both normal and visual modes
local wk = require("which-key")
wk.add({
  { "<leader>m", group = "markdown", icon = "󰍔", mode = "n" },
  { "<leader>m", group = "markdown", icon = "󰍔", mode = "v" }
})

-- Text formatting functions that work with both visual and normal mode
local function surround_text(prefix, suffix)
  return function()
    local mode = vim.fn.mode()
    if mode == "v" then
      vim.cmd('normal! c' .. prefix .. vim.fn.getreg('"') .. suffix .. '\27')
    elseif mode == "V" then
      local line = vim.fn.getline(".")
      vim.fn.setline(".", prefix .. line .. suffix)
      vim.cmd('normal! \27')
    else
      vim.cmd('normal! ciw' .. prefix .. vim.fn.getreg('"') .. suffix .. '\27')
    end
  end
end

-- Text formatting
map({"n", "v"}, "<leader>mb", surround_text("**", "**"), { desc = "Bold" })
map({"n", "v"}, "<leader>mi", surround_text("*", "*"), { desc = "Italic" })
map({"n", "v"}, "<leader>ms", surround_text("~~", "~~"), { desc = "Strikethrough" })
map({"n", "v"}, "<leader>mc", surround_text("`", "`"), { desc = "Inline code" })

-- List functions
local function make_unordered_list()
  local start_line, end_line
  if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
    start_line = vim.fn.getpos("'<")[2]
    end_line = vim.fn.getpos("'>")[2]
  else
    start_line = vim.fn.line(".")
    end_line = start_line
  end
  
  for i = start_line, end_line do
    local line = vim.fn.getline(i)
    if not line:match("^%s*-%s") then
      vim.fn.setline(i, "- " .. line)
    end
  end
end

local function make_ordered_list()
  local start_line, end_line
  if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
    start_line = vim.fn.getpos("'<")[2]
    end_line = vim.fn.getpos("'>")[2]
  else
    start_line = vim.fn.line(".")
    end_line = start_line
  end
  
  local counter = 1
  for i = start_line, end_line do
    local line = vim.fn.getline(i)
    if not line:match("^%s*%d+%.%s") then
      vim.fn.setline(i, counter .. ". " .. line)
      counter = counter + 1
    end
  end
end

local function make_task_list()
  local start_line, end_line
  if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
    start_line = vim.fn.getpos("'<")[2]
    end_line = vim.fn.getpos("'>")[2]
  else
    start_line = vim.fn.line(".")
    end_line = start_line
  end
  
  for i = start_line, end_line do
    local line = vim.fn.getline(i)
    if not line:match("^%s*-%s%[.%]%s") then
      vim.fn.setline(i, "- [ ] " .. line)
    end
  end
end

-- List keymaps
map({"n", "v"}, "<leader>mu", make_unordered_list, { desc = "Unordered list" })
map({"n", "v"}, "<leader>mo", make_ordered_list, { desc = "Ordered list" })
map({"n", "v"}, "<leader>mt", make_task_list, { desc = "Task list" })

-- Simple line operations
map("n", "<leader>m-", "o---<Esc>", { desc = "Horizontal rule" })
map("n", "<leader>ml", "ciw[<C-r>\"]()<Esc>i", { desc = "Make link" })

-- Heading toggle
local function toggle_heading()
  local line = vim.fn.getline(".")
  local level = line:match("^(#+)%s")
  
  if level then
    if #level >= 3 then
      vim.fn.setline(".", line:gsub("^#+%s*", ""))
    else
      vim.fn.setline(".", "#" .. line)
    end
  else
    vim.fn.setline(".", "# " .. line)
  end
end

map("n", "<leader>mh", toggle_heading, { desc = "Toggle heading" })
