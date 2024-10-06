---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  --[[  { "AstroNvim/astrocommunity", dev = true }, ]]
  { import = "astrocommunity.pack.lua" },

  -- colorscheme / icons
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  { import = "astrocommunity.colorscheme.solarized-osaka-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- utility
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- editing support
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.undotree" },
  -- git
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.diffview-nvim" },
  -- markdown & latex
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.quarto" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.full-dadbod" },
  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- code
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- media
  { import = "astrocommunity.media.vim-wakatime" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- lsp
  { import = "astrocommunity.lsp.garbage-day-nvim" },
}
