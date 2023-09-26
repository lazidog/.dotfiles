-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- disable netrw (vim's builtin file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows
-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#001419 ]])

-- configure nvim-tree
nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>")

local function open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })