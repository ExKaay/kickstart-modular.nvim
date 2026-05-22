-- INFO: Setting the colorscheme based on the Hostname
local hostname = vim.uv.os_gethostname()
if hostname == 'xk-T580-arch' then vim.cmd.colorscheme 'neonwave' end
if hostname == 'Arch-X230' then vim.cmd.colorscheme 'ferric' end -- i really like it
-- if hostname == 'Arch-X230' then vim.cmd.colorscheme 'fluoromachine' end -- transparent neon
