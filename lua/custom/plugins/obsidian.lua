return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    attachments = {
      folder = '/', -- NOTE: For now set to root folder!
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
      format = 'absolute',
      style = 'wiki',
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
          -- alternatively use the CWD:
          -- return assert(vim.fn.getcwd())
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
        overrides = {
          notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of 'nil'
          new_notes_location = 'current_dir',
          templates = {
            folder = vim.NIL,
          },
          disable_frontmatter = true,
        },
      },
      --   {
      --     name = "work",
      --     path = "~/vaults/work",
      --   },
    },

    ui = {
      enable = true, -- set to false to disable all additional syntax features
      update_debounce = 200, -- update delay after a text change (in milliseconds)
      max_file_length = 5000, -- disable UI features for files with more than this many lines
      -- Use bullet marks for non-checkbox lists.
      bullets = { char = '•', hl_group = 'ObsidianBullet' },
      external_link_icon = { char = '', hl_group = 'ObsidianExtLinkIcon' },
      -- Replace the above with this if you don't have a patched font:
      -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
      reference_text = { hl_group = 'ObsidianRefText' },
      highlight_text = { hl_group = 'ObsidianHighlightText' },
      tags = { hl_group = 'ObsidianTag' },
      block_ids = { hl_group = 'ObsidianBlockID' },
      hl_groups = {
        -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
        ObsidianTodo = { bold = true, fg = '#f78c6c' },
        ObsidianDone = { bold = true, fg = '#89ddff' },
        ObsidianRightArrow = { bold = true, fg = '#f78c6c' },
        ObsidianTilde = { bold = true, fg = '#ff5370' },
        ObsidianImportant = { bold = true, fg = '#d73128' },
        ObsidianBullet = { bold = true, fg = '#89ddff' },
        ObsidianRefText = { underline = true, fg = '#c792ea' },
        ObsidianExtLinkIcon = { fg = '#c792ea' },
        ObsidianTag = { italic = true, fg = '#89ddff' },
        ObsidianBlockID = { italic = true, fg = '#89ddff' },
        ObsidianHighlightText = { bg = '#75662e' },
      },
    },
  },
}
