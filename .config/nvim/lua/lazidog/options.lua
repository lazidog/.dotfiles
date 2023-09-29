vim.cmd("autocmd!") -- remove all autocommands (a way to tell Vim to run certain commands whenever certain events happen)

local opt = vim.opt -- for conciseness

-- line numbers
-- opt.relativenumber = true -- show relative line numbers
-- opt.number = true -- shows absolute line number on cursor line (when relative number is on)
vim.wo.number = true

opt.title = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.smarttab = true

opt.shiftwidth = 2 -- 2 spaces for indent width
opt.autoindent = true
opt.smartindent = true

-- backup
opt.backup = false
opt.backupskip = { '/tmp/*', '/private/tmp/*' }

-- line wrapping
opt.wrap = false -- disable line wrapping
-- opt.breakindent = true -- Every wrapped line will continue visually indented (same amount of space as the beginning of that line)

-- search settings
opt.hlsearch = true
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- cmd setting
opt.showcmd = true
opt.cmdheight = 1

-- appearance
opt.inccommand = 'split'
opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom


opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.inccommand = 'split'
opt.wildignore:append { '*/node_modules/*' }
opt.formatoptions:append { 'r' } -- Add asterisks in block comments

vim.cmd [[
  augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
  augroup END
]]
