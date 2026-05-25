---@module 'lazy'
---@type LazySpec
return {
  'akinsho/toggleterm.nvim',
  -- lazy = true,
  version = '*',
  opts = {
    -- INFO: This is set in keymaps.lua
    -- open_mapping = [[<leader>tt]],

    float_opts = {
      border = 'curved',
      winblend = 20,
      title_pos = 'center',
    },
  },
}
