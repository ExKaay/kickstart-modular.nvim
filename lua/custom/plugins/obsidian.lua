return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    attachments = {
      folder = './',
      -- FIXME: obsidian.builtin is not found but in autocomplete
      -- img_text_func = require('obsidian.builtin').img_text_func,
      img_name_func = function() return string.format('Pasted Image %s', os.date '%Y%m%d%H%M%S') end,
      confirm_img_paste = true,
      -- NOTE: Always use basename for imagenames
      --   img_text_func = function(path)
      --     local name = vim.fs.basename(tostring(path))
      --     local encodedname = require('obsidian.util').urlencode(name)
      --     return string.format('![%s](%s)', name, encodedname)
      --   end,
    },
    link = {
      format = 'relative',
    },
    templates = {
      folder = '03 - Templates',
      date_format = 'YYYY-MM-DD',
      time_format = 'hh:mm',
      substitutions = {},
    },
    workspaces = {
      {
        name = 'GSynced Vault',
        path = '~/Documents/Obsidian/GSynced Vault',
      },
      {
        name = 'no-vault',
        path = function()
          -- NOTE: Alternatively, use CWD:
          -- return assert(vim.fn.getcwd())
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
        -- FIXME: WARNINGS!
        --@diagnostics disable-lines
        overrides = {
          notes_subdir = vim.NIL,
          new_notes_location = 'current_dir',
          templates = {
            folder = vim.NIL,
          },
          frontmatter = {
            disabled = true,
          },
        },
      },
      --   {
      --     name = "work",
      --     path = "~/vaults/work",
      --   },
    },
  },
}
