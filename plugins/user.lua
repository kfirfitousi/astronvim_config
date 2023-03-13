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
}
