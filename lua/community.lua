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
  { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- editor plugins
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
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
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.full-dadbod" },
  -- workflow
  {
    import = "astrocommunity.workflow.hardtime-nvim",
    enabled = false,
  },
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
  -- recipes
  { import = "astrocommunity.recipes.neovide" },
  -- utility
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
              { find = "%d fewer lines" },
              { find = "%d more lines" },
            },
          },
          view = "mini",
        },
        {
          filter = {
            event = "msg_show",
            min_height = 20,
          },
          view = "messages",
        },
      },
    },
  },
}
