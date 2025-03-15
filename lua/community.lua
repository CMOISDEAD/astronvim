---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  --[[  { "AstroNvim/astrocommunity", dev = true }, ]]
  { import = "astrocommunity.pack.lua" },

  -- colorscheme / icons
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- utility
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- file explorer
  { import = "astrocommunity.file-explorer.mini-files" },
  -- notes
  { import = "astrocommunity.note-taking.neorg" },
  -- editing support
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.undotree" },
  -- git
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.diffview-nvim" },
  -- pack
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.full-dadbod" },
  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- media
  { import = "astrocommunity.media.vim-wakatime" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}
