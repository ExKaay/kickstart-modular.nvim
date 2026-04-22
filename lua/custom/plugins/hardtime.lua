-- NOTE: Read about @module and @type!

---@module 'lazy'
---@type LazySpec
return {
  'm4xshen/hardtime.nvim',
  lazy = false,
  dependencies = { 'MunifTanjim/nui.nvim' },
  opts = {
    disabled_keys = {
      -- Enable Arrowkeys, as i handle them in lua.keymaps
      ['<Up>'] = false,
      ['<Down>'] = false,
      ['<Left>'] = false,
      ['<Right>'] = false,
    },
  },
}
