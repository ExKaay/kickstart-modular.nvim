-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- NOTE: They Keymap for closing / deleting buffers from telescope is <C-d> and defined in telescope.lua
-- ONLY available in insert mode to not conflict with preview scrolling!

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!"<CR>')
-- NOTE: I'm using up and down as halfscreen scroll
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!"<CR>')
vim.keymap.set('n', '<up>', '<C-u>')
vim.keymap.set('n', '<down>', '<C-d>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- WARNING: My Kitty already uses <C-S> as its modifier
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- NOTE: My Keymappings
-- INFO: ToggleTerm bindings
vim.keymap.set('n', '<leader>tt', '<Cmd>ToggleTerm size=20 dir=%:p:h direction=float name=ToggleTerm<CR>', { desc = 'Open [T]oggle[T]erm' })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Release ToggleTerm Controls' })

-- INFO: obsidian.nvim bindings
-- Groups defined in lua/custom/wich-key.lua
vim.keymap.set({ 'n', 'v' }, '<leader>oA', vim.lsp.buf.code_action, { desc = '[O]bsidian [A]ctions' })

vim.keymap.set('n', '<leader>ohf', '<Cmd>Obsidian help<CR>', { desc = '[O]bsidian [H]elp [F]iles' })
vim.keymap.set('n', '<leader>ohs', '<Cmd>Obsidian helpgrep<CR>', { desc = '[O]bsidian [H]elp [S]earch' })
vim.keymap.set('n', '<leader>oo', '<Cmd>Obsidian open<CR>', { desc = '[O]bsidian [O]pen (new Instance)' })
vim.keymap.set('n', '<leader>oq', '<Cmd>Obsidian quick_switch<CR>', { desc = '[O]bsidian [Q]uickswitch' })
vim.keymap.set('n', '<leader>os', '<Cmd>Obsidian search<CR>', { desc = '[O]bsidian [S]earch (grep)' })
vim.keymap.set('n', '<leader>oc', '<Cmd>Obsidian check<CR>', { desc = '[O]bsidian [C]heck' })
vim.keymap.set('n', '<leader>oy', '<Cmd>Obsidian new_from_template<CR>', { desc = '[O]bsidian New from [Y]Template' })
vim.keymap.set('n', '<leader>on', '<Cmd>Obsidian new<CR>', { desc = '[O]bsidian New' })
vim.keymap.set('n', '<leader>of', '<Cmd>Obsidian follow_link<CR>', { desc = '[O]bsidian [F]ollow Link' })
vim.keymap.set('n', '<leader>ol', '<Cmd>Obsidian links<CR>', { desc = '[O]bsidian list [L]inks' })
vim.keymap.set('n', '<leader>ob', '<Cmd>Obsidian backlinks<CR>', { desc = '[O]bsidian [B]backlinks' })
vim.keymap.set('n', '<leader>ot', '<Cmd>Obsidian tags<CR>', { desc = '[O]bsidian list [T]ags' })
vim.keymap.set('n', '<leader>ow', '<Cmd>Obsidian workspace<CR>', { desc = '[O]bsidian [W]orkspaces' })
vim.keymap.set('n', '<leader>os', '<Cmd>Obsidian toc<CR>', { desc = '[O]bsidian [S]ections' })
vim.keymap.set('n', '<leader>oa', '<Cmd>Obsidian template<CR>', { desc = '[O]bsidian [A]pply Template' })
vim.keymap.set('n', '<leader>or', '<Cmd>Obsidian rename<CR>', { desc = '[O]bsidian [R]ename' })

-- vim: ts=2 sts=2 sw=2 et
