return {
  'pearofducks/ansible-vim',
  version = '*',

  config = function() require('ansible').setup() end,

  dependencies = {},
}
