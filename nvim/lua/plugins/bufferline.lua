return {
  -- Configure bufferline to show full filenames
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      -- Modify the existing options to show full filenames
      opts.options = opts.options or {}

      -- Set max_name_length to a very large number to prevent truncation
      opts.options.max_name_length = 999

      -- Disable showing the file type icon to save space
      -- opts.options.show_buffer_icons = false -- Uncomment if you want to disable icons

      -- Ensure truncation is disabled
      opts.options.truncate_names = false

      return opts
    end,
  },
}
