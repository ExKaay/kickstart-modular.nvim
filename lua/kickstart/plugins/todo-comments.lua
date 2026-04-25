-- Highlight todo, notes, etc in comments
---@module 'lazy'
---@type LazySpec
return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ---@module 'todo-comments'
    ---@type TodoOptions
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      signs = true,
      keywords = {
        -- OLD, used for Comments that are no longer true / fitting
        OLD = {
          icon = '󱦟',
          color = '#C99404',
          alt = { 'RELICT', 'DEFUNCT', 'IGNORE', 'FALSE' },
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
