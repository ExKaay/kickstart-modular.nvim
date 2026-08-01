return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

    -- CHNG: Lets try bigfile, maybe it wont load _huge_ treesitter instances
    bigfile = { enabled = true },

    -- CHNG: At least its not so heavywieight
    dashboard = { enabled = true },
    -- explorer = { enabled = true },

    -- CHNG: Animate indentation marks
    indent = { enabled = true },

    -- WEIRD: Not found until today...
    input = { enabled = true },
    -- picker = { enabled = true },
    -- notifier = { enabled = true },

    -- CHNG: Render File before loading modules
    quickfile = { enabled = true },

    -- CHNG: Algo based selection?
    scope = { enabled = true },

    -- CHNG: Maybe C-d scrolling is now not so disorienting?
    scroll = {
      enabled = true,
      -- REMARK: a bit nicer then standard linear
      easing = 'sine',
    },

    -- WEIRD: Already enabled???
    -- statuscolumn = { enabled = true },

    -- CHNG: LSP integration?
    words = { enabled = true },

    -- PERF: *FINALLY* => it was called 'image', not 'images'...
    image = {
      enabled = true,
      resolve = function(path, src)
        local api = require 'obsidian.api'
        if api.path_is_note(path) then return api.resolve_attachment_path(src) end
      end,
    },
  },
}
