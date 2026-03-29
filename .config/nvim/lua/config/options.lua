vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = false
opt.number = true
opt.wrap = false

--tabs and indentations
opt.tabstop = 2        -- 2 spaces for tabs
opt.shiftwidth = 2     -- 2 spaces for indent width
opt.expandtab = true   -- expand tab to spaces
opt.smartindent = true -- copy indent line when starting a new one


-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.conceallevel = 2

opt.clipboard:append("unnamedplus")

-- statuscolumn
opt.signcolumn = "yes"

-- indent guides
vim.g.indentline_char = '|'
vim.o.listchars = 'trail:•,extends:#,nbsp:.,precedes:❮,extends:❯,tab:› ,leadmultispace:' .. vim.g.indentline_char .. '  '
