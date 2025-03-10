local headers = {
  [[
-.__     `--._   `-._  `-.  `. `. : .' .'  .-'  _.-'   _.--'     __.--'  
  __    `--.__    `--._  `-._ `-. `. :/ .' .-' _.-'  _.--'    __.--'    __
   `--..__   `--.__   `--._ `-._`-.`_=_'.-'_.-' _.--'   __.--'   __..--'  
 --..__   `--..__  `--.__  `--._`-q(-_-)p-'_.--'  __.--'  __..--'   __..--
       ``--..__  `--..__ `--.__ `-'_) (_`-' __.--' __..--'  __..--''      
 ...___        ``--..__ `--..__`--/__/  --'__..--' __..--''        ___... 
       ```---...___    ``--..__`_(<_   _/)_'__..--''    ___...---'''      
  ```-----....._____```---...___(____|_/__)___...---'''_____.....-----''' 
                                    
                                    
                                    
                      "God has a destiny for everyone"
  ]],
}

return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    { "juansalvatore/git-dashboard-nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  config = function()
    -- Import alpha and dashboard
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"

    -- Define custom icons
    local icons = {
      ui = {
        file = "",
        files = "",
        open_folder = "",
        config = "",
        lazy = "󰒲",
        git = "",
        close = "",
      },
    }

    local function whitespace_only(str) return str:match "^%s*$" ~= nil end

    local function pad(n) return { type = "padding", val = n } end

    local function center_header(header)
      local lines = {}
      for line in string.gmatch(header, "[^\n]+") do
        table.insert(lines, line)
      end

      local width = vim.api.nvim_win_get_width(0) -- Get the width of the current window
      local padding = math.floor((width - #lines[1]) / 2) -- Calculate padding based on the first line length
      for i, line in ipairs(lines) do
        lines[i] = string.rep(" ", padding) .. line
      end
      return lines
    end

    local function format_git_header()
      local git_dashboard_raw = require("git-dashboard-nvim").setup {}
      local git_dashboard = {}
      for _, line in ipairs(git_dashboard_raw) do
        if not whitespace_only(line) then table.insert(git_dashboard, line) end
      end

      local git_repo = git_dashboard[1]
      local git_branch = git_dashboard[#git_dashboard]

      if git_repo == nil and git_branch == nil then
        return {
          type = "text",
          val = "",
          opts = { position = "center" },
        }, {}
      end

      local git_branch_section = {
        type = "text",
        val = " " .. git_repo .. ":" .. string.sub(git_branch, 5, #git_branch),
        opts = { position = "center" },
      }

      return git_branch_section, { unpack(git_dashboard, 2, #git_dashboard - 1) }
    end

    -- Define custom header with ASCII art or any custom message
    local random_index = math.random(#headers)
    local ascii_header = headers[random_index]

    local git_branch_section, commit_history = format_git_header()

    -- for _, line in ipairs(commit_history) do
    --   ascii_header = ascii_header .. "\n" .. string.rep(" ", 3) .. line
    -- end

    local custom_header = center_header(ascii_header)
    local header = { type = "text", val = custom_header }

    local buttons = {
      type = "group",
      val = {
        dashboard.button("n", icons.ui.file .. "  New File", "<cmd>new<CR>"),
        dashboard.button("o", icons.ui.files .. "  Recent Files", "<cmd>Telescope oldfiles<cr>"),
        dashboard.button("c", icons.ui.config .. "  Neovim Config", "<cmd>Oil /home/camilo/.config/nvim<cr>"),
        dashboard.button("l", icons.ui.lazy .. " Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("q", icons.ui.close .. "  Quit", ":qa<CR>"),
      },
    }

    local bottom_section = {
      type = "text",
      val = "The true test of a man’s character is what he does when no one is watching.",
      opts = { position = "center", hl = "Comment" },
    }

    -- Custom footer showing number of plugins loaded

    local footer = {
      type = "text",
      val = { "⚡" .. require("lazy").stats().loaded .. " plugins loaded." },
      opts = { position = "center", hl = "Comment" },
    }

    -- Setting up the alpha layout
    alpha.setup {
      layout = {
        pad(4),
        header,
        -- pad(1),
        -- git_branch_section,
        pad(2),
        buttons,
        pad(2),
        bottom_section,
        pad(2),
        footer,
      },
      position = "center",
    }
  end,
}
