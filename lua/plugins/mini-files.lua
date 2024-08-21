if true then return {} end -- disable this file because mini-files in astronvim a bug where close and dont open again

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
  opts = {},
}
