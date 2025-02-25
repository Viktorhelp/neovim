if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

vim.cmd([[
call plug#begin('~/.vim/plugged')
Plug 'uplus/vim-ftp'
call plug#end()
]])
