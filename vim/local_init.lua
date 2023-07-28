-- Improves startup time. Customize this for each system.
vim.g.python3_host_prog = "/usr/bin/python3"

vim.cmd("source " .. os.getenv("DOTFILES") .. "/vim/init.lua")
