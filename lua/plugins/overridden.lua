if true then return {} end

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts) opts.window.position = "right" end,
}
