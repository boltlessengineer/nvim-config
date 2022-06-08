local ok, tsconfigs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

local loved_parsers = require('plugins.treesitter.parsers')

tsconfigs.setup {
  -- A list of parser names, or "all"
  ensure_installed = loved_parsers,

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = false,
  -- ignore_install = { "d", "foam", "help", "phpdoc", "slint", "todotxt", "verilog" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be diagnostic_disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },

  autopairs = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = { enable = true, disable = { 'yaml' } },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.outer',
      },
    },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

require 'plugins.treesitter.context'
