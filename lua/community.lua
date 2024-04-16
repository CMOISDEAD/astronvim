---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  --[[  { "AstroNvim/astrocommunity", dev = true }, ]]
  { import = "astrocommunity.pack.lua" },

  -- bars and lines
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- colorscheme
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.melange-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- editor plugins
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  -- git
  { import = "astrocommunity.git.neogit" },
  -- markdown & latex
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.quarto" },
  { import = "astrocommunity.pack.full-dadbod" },
  -- workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- motion
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- code
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- media
  { import = "astrocommunity.media.vim-wakatime" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- startup
  { import = "astrocommunity.startup.mini-starter" },
  -- scrolling
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
}
