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
}
M.abc = {
  i = {
    ["jj"] = {"<C-o>A;", "append a semi colon to end of line", opts = { nowait = true, silent = true } },
  },
}
M.telescope = {
  n = {
    ["<leader>fc"] = { "<cmd> Telescope grep_string <CR>", "Find word under cursor" },
  },
}


-- more keybinds!

return M
