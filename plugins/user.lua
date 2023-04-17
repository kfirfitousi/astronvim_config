return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
  },

  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      require("copilot").setup {
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<C-G>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>",
            prev = "<C-F>",
            next = "<C-f>",
            dismiss = "<C-]>",
          },
        },
      }
    end,
  },

  {
    "ThePrimeagen/vim-be-good",
  },

  {
    "justinhj/battery.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("battery").setup {
        update_rate_seconds = 30,    -- Number of seconds between checking battery status
        show_plugged_icon = true,    -- If true show a cable icon alongside the battery icon when plugged in
        show_unplugged_icon = false, -- When true show a diconnected cable icon when not plugged in
        show_percent = true,         -- Whether or not to show the percent charge remaining in digits
        vertical_icons = true,       -- When true icons are vertical, otherwise shows horizontal battery icon
      }
    end,
  },
}
