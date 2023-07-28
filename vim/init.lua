vim.g.python_flavor = "python3"

-- Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

-- Load vimrc before plugins to ensure that plugins are initialized using my
-- custom mappings and global variables.
function sourceVimrcFile(suffix)
    vim.cmd("source " .. os.getenv("DOTFILES") .. "/vim/vimrc_" .. suffix)
end
-- TODO: convert all of these files to lua?
for _, suffix in pairs({"basic", "remappings", "appearance", "command_management", "files", "folding", "internal", "motion", "plugins", "searching", "tags", "text", "windows_and_buffers", "terminal"}) do
    sourceVimrcFile(suffix)
end

vim.cmd("source " .. os.getenv("VIMRUNTIME") .. "/mswin.vim")

-- Lazy needs $DOTFILES/vim to be in the runtimepath to load the "plugins" lua
-- modules
vim.opt.runtimepath:append("$DOTFILES/vim")

require("lazy").setup("plugins")

-- lazy resets the runtimepath so we have to add this back again
vim.opt.runtimepath:append("$DOTFILES/vim,$DOTFILES/vim/after")

vim.cmd [[

colo jellybeans

" This fixes some mappings on Linux
noremap Ã <C-d>zz
inoremap Ã <Esc><C-d>zzi
noremap À <C-u>zz
inoremap À <Esc><C-u>zzi

" this just makes the headers bold
hi CSVColumnHeaderOdd ctermfg=71 cterm=bold
hi CSVColumnHeaderEven ctermfg=183 cterm=bold
]]

require("lspsetup")
