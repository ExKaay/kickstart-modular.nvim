---@module 'lazy'
---@type LazySpec
return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/Documents/orgfiles/**/*',
      org_default_notes_file = '~/Documents/orgfiles/refile.org',
      mappings = {
        prefix = '<leader>O',
      },
    }
    -- Experimental LSP support
    vim.lsp.enable 'org'
  end,
}
