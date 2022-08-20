local status, tokyonight = pcall(require, 'tokyonight')
if not status then return end

print('tokyonight')

vim.cmd [[colorscheme tokyonight]]
