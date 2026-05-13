---@module 'lazy'
---@type 'LazySpec'
return {
  'miladggg/neonwave.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('neonwave').setup {
      intensity = 'neon', -- 'soft' or 'neon'
      background = 'dark', -- 'light' or dark'
      transparent_background = false, -- true or false
    }
  end,
}
