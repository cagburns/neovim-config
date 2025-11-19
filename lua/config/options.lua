-- Enable relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"

-- Searches ignore case unless include an upper case character
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Highlight search matches
vim.opt.hlsearch = false

-- Better line break stuff
vim.opt.wrap = false
vim.opt.breakindent = true

-- Tabs are 2 spaces wide
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Converts tab key presses to spaces
vim.opt.expandtab = true

-- Enable 24 bit rgb
vim.opt.termguicolors = true

-- Show additional column next to line numbers for breakpoints and stuff
vim.opt.signcolumn = "yes"

-- Ms it takes to write swap file and cursorhold fires
vim.opt.updatetime = 250

-- save undo to history when closing
vim.opt.undofile = true

-- vertical splits right, horizontal splits below
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
