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
      merge_keywords = false, -- needed to recolor defaults
      keywords = {

        -- HACK: These are the default keywords (minus INFO), so that i can _not_ merge keyword, as otherwise i can't recolor INFO
        FIX = {
          icon = ' ', -- icon used for the sign, and in search results
          color = 'error', -- can be a hex color, or a named color (see below)
          alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = ' ', color = 'info' },
        HACK = { icon = ' ', color = 'warning' },
        WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
        PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
        NOTE = { icon = ' ', color = 'hint' },
        TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
        -- END OF DEFAULTS

        -- OLD, used for Comments that are no longer true / fitting
        OLD = { icon = '󱦟', color = '#C99404', alt = { 'RELICT', 'DEFUNCT', 'IGNORE', 'FALSE' } },

        -- Override INFO with a new color, otherwise it becomes unnessecary when i otherwise use NOTE
        INFO = { color = '#229944' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
