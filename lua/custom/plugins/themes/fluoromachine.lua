---@module 'lazy'
---@type 'LazySpec'
--[[
-- HACK:
-- Cyberpunky purple and transparent theme.
-- Maybe it need a bit of tweakign for legibility, like comment/lineNr color
--
-- NOTE:
-- See this for reference:
-- https://github.com/maxmx03/fluoromachine.nvim/blob/a279f667168e742df059caf1f1f4daf1de24f4f8/lua/fluoromachine/highlights/fluoromachine/editor.lua#L20
--]]
return {
  {
    'maxmx03/fluoromachine.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require 'fluoromachine'

      fm.setup {
        glow = true,
        theme = 'fluoromachine',
        transparent = true,
      }

      vim.cmd.colorscheme 'fluoromachine'
    end,
  },
}
