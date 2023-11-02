---@type MappingsTable
local M = {}

-- M.disabled = {
--   i = {
--       ["jj"] = "",
--   }
-- }
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  i = {
    ["jj"] = {"<C-o>A;", "append a semi colon to end of line", opts = { nowait = true, silent = true } },
  },
}
M.nvterm = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open lazygit" },
  },
}
M.telescope = {
  n = {
    ["<leader>fc"] = { "<cmd> Telescope grep_string <CR>", "Find word under cursor" },
  },
}
M.tabufline = {
    n = {
        ["<leader>ca"] = {
            function()
                require("nvchad.tabufline").closeOtherBufs()
            end,
            "Closes all buffers except current one",
        },
    }
}
-- more keybinds!

return M
