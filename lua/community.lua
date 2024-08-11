---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  --[[  { "AstroNvim/astrocommunity", dev = true }, ]]
  { import = "astrocommunity.pack.lua" },

  -- colorscheme / icons
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- editor plugins
  { import = "astrocommunity.editing-support.neogen" },
  -- markdown & latex
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.java" },
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
