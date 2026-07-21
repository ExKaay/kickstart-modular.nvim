vim.opt_local.conceallevel = 2
-- fixing theme specific striketrough (ferric not working)
vim.api.nvim_set_hl(0, '@text.strike', { strikethrough = true })
