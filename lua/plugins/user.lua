---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        [[▓█████▄  ▒█████   ▒█████   ███▄ ▄███▓]],
        [[▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██▒▀█▀ ██▒]],
        [[░██   █▌▒██░  ██▒▒██░  ██▒▓██    ▓██░]],
        [[░▓█▄   ▌▒██   ██░▒██   ██░▒██    ▒██ ]],
        [[░▒████▓ ░ ████▓▒░░ ████▓▒░▒██▒   ░██▒]],
        [[ ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ░  ░]],
        [[   ░        ░ ░      ░ ░         ░   ]],
        [[ ░                                   ]],
        [[              N E O V I M            ]],
      }
      return opts
    end,
  },
  { "lervag/vimtex", lazy = false },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      dim_inactive = false,
    },
  },
  {
    "mattn/emmet-vim",
    lazy = false,
  },
  {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    ft = { "http", "json" },
    -- latest commit breaks formatting
    commit = "8b62563",
    opts = {
      result_split_in_place = true,
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "0.1.*",
    build = function() require("typst-preview").update() end,
  },
}
