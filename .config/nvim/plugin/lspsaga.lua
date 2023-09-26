local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
  ui = {
    border = 'rounded',
  },
  symbol_in_winbar = {
    enable = false
  },
  lightbulb = {
    enable = false
  },
  outline = {
    layout = 'float'
  }
})

local keymap = vim.keymap
local opts = { noremap = true, silent = true}
keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap.set('n', 'gt', '<Cmd>Lspsaga goto_type_definition<CR>', opts)
keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap.set('n', 'gf', '<cmd>Lspsaga finder<CR>', opts) -- show definition, references
keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opts) -- see definition and make edits in window
keymap.set('n', 'd<up>', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts) -- jump to previous diagnostic in buffer
keymap.set('n', 'd<down>', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts) -- jump to next diagnostic in buffer
keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts) -- show documentation for what is under cursor
keymap.set({ 'n', 'v' }, 'ga', '<cmd>Lspsaga code_action<CR>')
