-- creates a backup file
vim.opt.backup = false
-- highlight all matches on previous search pattern
vim.opt.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true
-- allow the mouse to be used in neovim
vim.opt.mouse = 'a'
-- pop up menu height
vim.opt.pumheight = 10
-- we don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false
-- smart case
vim.opt.smartcase = true
-- make indenting smarter again
vim.opt.smartindent = true
-- enable persistent undo
vim.opt.undofile = true
-- faster completion (4000ms default)
vim.opt.updatetime = 300
-- if a file is being edited by another program (or was written to file while editing with another program),
-- it is not allowed to be edited
vim.opt.writebackup = false
-- convert tabs to spaces
vim.opt.expandtab = true
-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 4
-- insert 2 spaces for a tab
vim.opt.tabstop = 4
-- set numbered lines
vim.opt.number = true
-- set relative numbered lines
vim.opt.relativenumber = false
-- set number column width to 2 {default 4}
vim.opt.numberwidth = 4
-- always show the sign column, otherwise it would shift the text each time
vim.opt.signcolumn = 'yes'
-- display lines as one long line
vim.opt.wrap = false
-- scroll offset min
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
-- avoid hit-enter prompts
vim.opt.shortmess:append 'c'
