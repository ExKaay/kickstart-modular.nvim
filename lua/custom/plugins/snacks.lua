return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  dependencies = { 'amansingh-afk/milli.nvim' }, -- added milli for ASCII splashscreen
  ---@type snacks.Config
  opts = function()
    local splash = require('milli').load { splash = 'lighningtornado', loop = true }
    return {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      -- bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          header = table.concat(splash.frames[1], '\n'),
        },
        sections = {
          { section = 'header', padding = 1 },
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    }
  end,
  -- explorer = { enabled = true },
  -- indent = { enabled = true },
  -- input = { enabled = true },
  -- picker = { enabled = true },
  -- notifier = { enabled = true },
  -- quickfile = { enabled = true },
  -- scope = { enabled = true },
  -- scroll = { enabled = true },
  -- statuscolumn = { enabled = true },
  -- words = { enabled = true },
  images = { enabled = true },
  config = function(_, opts)
    require('snacks').setup(opts)
    require('milli').snacks { splash = 'lighningtornado', loop = true }
  end,
}
