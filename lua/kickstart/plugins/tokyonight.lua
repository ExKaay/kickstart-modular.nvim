---@module 'lazy'
---@type LazySpec
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    -- WARNING: UNCOMMENT IF USING AS DEAULT!
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        -- use the style 'storm'
        style = 'storm',
        styles = {
          -- Disable italics in comments
          comments = { italic = false },
        },

        -- NOTE: my configs
        on_colors = function(colors) colors.comment = '#727BA5' end, -- Brighten the Comments
        -- Setting Line Numbers to commentColor
        on_highlights = function(hl, colors)
          local commentColor = colors.comment
          hl.LineNrAbove = {
            fg = commentColor,
          }
          hl.LineNrBelow = {
            fg = commentColor,
          }
          hl.DiagnosticUnnecessary = {
            fg = commentColor,
          }
        end,
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- NOTE: i also like 'minischeme'
      -- vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
