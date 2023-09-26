local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "javascript",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  },
  auto_install = true
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
