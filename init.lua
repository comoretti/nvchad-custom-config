local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd({ "BufWritePost" }, {
	callback = function()
		vim.cmd("call SyncUploadFile()")
	end,
})


local opt = vim.opt

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.undofile = false
opt.clipboard = ""

local function copy(lines, _)
  require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
  return {vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('')}
end

vim.g.clipboard = {
  name = 'osc52',
  copy = {['+'] = copy, ['*'] = copy},
  paste = {['+'] = paste, ['*'] = paste},
}

-- Configura o yank para copiar para o clipboard do sistema
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        if vim.v.event.operator == "y" then
            vim.fn.system('xclip -selection clipboard', vim.fn.getreg('"'))
        end
    end,
    group = vim.api.nvim_create_augroup("YankToClipboard", { clear = true }),
})

