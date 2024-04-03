---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "andymass/vim-matchup" },
  init = function()
    vim.g.matchup_matchparen_offscreen = {
      method = "popup",
      fullwidth = 1,
      highlight = "Normal",
      syntax_hl = 1,
    }
    -- vim.g.matchup_matchparen_deferred = 1
  end,
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.matchup = { enabled = true }
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
