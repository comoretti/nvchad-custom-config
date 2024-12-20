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
  t = {
    ["<C-h>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>h", true, true, true), "Window left" },
    ["<C-j>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>j", true, true, true), "Window down" },
    ["<C-k>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>k", true, true, true), "Window up" },
    ["<C-l>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>l", true, true, true), "Window right" },
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
    ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "Resume last search" },
    ["<leader>fy"] = { "<cmd> Telescope yank_history <CR>", "Yank history picker" },
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
M.lspconfig = {
    n = {
        ["<leader>cv"] = {
            function()
                vim.lsp.buf.code_action()
            end,
            "LSP code action",
        },
    }
}
-- more keybinds!

return M
