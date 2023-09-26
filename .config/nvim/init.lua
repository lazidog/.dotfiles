require('lazidog.options')
require('lazidog.highlights')
require('lazidog.keymaps')
require('lazidog.plugins')

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac == 1 then
  require('lazidog.macos')
end


----------------
-- cursor moving
----------------

-- [number]h/j/k/l: move number of char
-- w/b: move to next/preivous word
-- 0/$: move to begining/end of line

----------------
-- edit
----------------

-- V: enter visual mode and use arrow key to select text
-- y: copy
-- p: paste

-- r + newchar: replace char
-- x: delete char
-- u: undo
-- Ctrl + r: redo

-- i: enter insert mode
-- a: enter insert mode and move to the cursor to the end of current word to append
-- o: enter insert mode on new line

-- R: enter replace mode, every char typed will replace the existing one
