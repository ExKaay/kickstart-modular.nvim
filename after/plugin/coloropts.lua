-- INFO: Setting the colorscheme based on the Hostname
local hostname = vim.uv.os_gethostname()
if hostname == 'xk-T580-arch' then vim.cmd.colorscheme 'neonwave' end
if hostname == 'xk-X230-arch' then vim.cmd.colorscheme 'ferric-steel' end -- i really like it, now there is -steel, -graphite and -forge
-- if hostname == 'Arch-X230' then vim.cmd.colorscheme 'fluoromachine' end -- transparent neon
