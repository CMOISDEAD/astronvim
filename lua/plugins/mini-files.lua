if true then return {} end

return {
  "echasnovski/mini.files",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<tab>"] = {
              function()
                if not require("mini.files").close() then require("mini.files").open() end
              end,
              desc = "Explorer",
            },
          },
        },
      },
    },
  },
  specs = {
    { "neotree", optional = true, enabled = false },
  },
  opts = {},
}
