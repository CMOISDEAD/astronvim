---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  --[[  { "AstroNvim/astrocommunity", dev = true }, ]]
  { import = "astrocommunity.pack.lua" },

  -- colorscheme / icons
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.melange-nvim" },
  { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- editor plugins
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- markdown & latex
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.typescript" },
  -- motion
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- code
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- media
  { import = "astrocommunity.media.vim-wakatime" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}
