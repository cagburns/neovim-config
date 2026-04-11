local opt = vim.opt
-- Enable relative line numbers
opt.number = true
opt.relativenumber = true
opt.mouse = "a"

-- Searches ignore case unless include an upper case character
opt.ignorecase = true
opt.smartcase = true
-- Highlight search matches
opt.hlsearch = false

-- Better line break stuff
opt.wrap = false
opt.breakindent = true

-- Tabs are 2 spaces wide
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true

-- Converts tab key presses to spaces
opt.expandtab = true
opt.autoindent = true

-- Enable 24 bit rgb
opt.termguicolors = true

-- Show additional column next to line numbers for breakpoints and stuff
opt.signcolumn = "yes"

-- Ms it takes to write swap file and cursorhold fires
opt.updatetime = 250

-- save undo to history when closing
opt.undofile = true

-- vertical splits right, horizontal splits below
opt.splitright = true
opt.splitbelow = true

opt.clipboard = "unnamedplus"

opt.scrolloff = 8
opt.sidescrolloff = 8
