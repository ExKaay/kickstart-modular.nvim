---@module 'lazy'
---@type LazySpec
return {
  'rcarriga/nvim-notify',
  lazy = false,
  -- PERF: IT FUCKING WORKS WOHOOO
  -- TODO: Test if opts = {} is sufficent!
  config = function() vim.notify = require 'notify' end,
}
