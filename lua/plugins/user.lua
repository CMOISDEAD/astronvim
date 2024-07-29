---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "             \\                                      [            ",
        "              @                 ⟡                  ╢             ",
        "      /       ╣▒                                  ]▒       \\     ",
        "     ╔       ]Ñ▒                                  ╟╣┐       ▓    ",
        "    ╢╣       ╣▓            √          t            ▓╣       ▓╣   ",
        "   ▓╣▒╖    ╓╫╜           ╥▓    DOOM   ▓@           ╙▓╖    ╔╣╢║  ",
        "   ▓▓▓▓  ,p▓,,,,,,      ╜╙▓▄╖,      ,╓╥╜╙╙    ,,,,,,,,▓▓,  ▀▓▓╣U ",
        "   ▀▓Ö   ╙█▓▓▓▓▓▓╢╫╣▓▓▓▓▓╦, ▀▓▓╗  g╢▓╝ ,╓H╢╢╢╢╢╢▓▓▓▓▓▓▒▓╜   ]▓▓  ",
        '    ▓▓▓╦╥╖ ╙╙╙╙`     `""▀▓▓@ ▐█▓L]▓╫╛ Æ▒╨╜"       ""╙╙` ╓╖∩▒▒▓   ',
        ' ╒▓▒╜""╙▀▓▓                ▀  █▒Γ▐▓▓  ╩                ▓╢╜""╙▀█╫L',
        " ▐▌`      └╝                  ▓▒` █▓                  ╜       └█▓",
        "▐▓                            ▓▒  █╢                           ▐▓",
        ' ▐Γ                            ╛  ▐"                           ▐[',
        " ¬U                                                            jU",
        "  C                                                            j ",
        "   L                                                          ]  ",
      }
      opts.section.buttons.val = {}
      opts.section.footer = {}
      return opts
    end,
  },
  {
    "mattn/emmet-vim",
    lazy = false,
    enabled = false,
  },
  {
    "danilamihailov/beacon.nvim",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
