-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local augroup = vim.api.nvim_create_augroup("FocusDisable", { clear = true })

local ignore_filetypes = {
  "neo-tree",
  "dap-repl",
  "SidebarNvim",
  "Trouble",
  "terminal",
  "dapui_console",
  "dapui_watches",
  "dapui_stacks",
  "dapui_breakpoints",
  "dapui_scopes",
  "NeogitStatus",
  "NeogitLogView",
  "NeogitPopup",
  "NeogitCommitMessage",
  "OverseerList",
  "DiffviewFiles",
  "toggleterm",
  "trouble",
  "dbui",
  "undotree",
}

local ignore_buftypes = { "nofile", "prompt", "popup" }

vim.api.nvim_create_autocmd("WinEnter", {
  group = augroup,
  callback = function(_)
    if vim.tbl_contains(ignore_buftypes, vim.bo.buftype) then
      vim.w.focus_disable = true
    else
      vim.w.focus_disable = false
    end
  end,
  desc = "Disable focus autoresize for BufType",
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  callback = function(_)
    if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
      vim.b.focus_disable = true
    else
      vim.b.focus_disable = false
    end
  end,
  desc = "Disable focus autoresize for FileType",
})
