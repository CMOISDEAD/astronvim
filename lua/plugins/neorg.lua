return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  opts = {
    ["core.defaults"] = {},
    ["core.concealer"] = {},
    ["core.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/notes/",
        },
        default_workspace = "notes",
      },
    },
  },
}
