-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- increment/decrement numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- window management
keymap.set("n", 'te', ':tabedit') -- new tab
keymap.set('n', 'tx', ':tabclose<CR>') -- close tab
-- -- Split window
-- keymap.set("n", 'ss', ':split<Return><C-w>w')
-- keymap.set("n", 'sv', ':vsplit<Return><C-w>w')
-- -- Move window
-- keymap.set("n", '<Space>', '<C-w>w')
-- keymap.set('', 'sh', '<C-w>h')
-- keymap.set('', 'sk', '<C-w>k')
-- keymap.set('', 'sj', '<C-w>j')
-- keymap.set('', 'sl', '<C-w>l')

-- -- Resize window
-- keymap.set('n', '<C-w><left>', '<C-w><')
-- keymap.set('n', '<C-w><right>', '<C-w>>') 
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')
