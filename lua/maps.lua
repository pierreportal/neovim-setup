local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Incerment / decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backward
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split
keymap.set('n', 'ff', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'fv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'f<left>', '<C-w>h')
keymap.set('', 'f<up>', '<C-w>k')
keymap.set('', 'f<right>', '<C-w>l')
keymap.set('', 'f<down>', '<C-w>j')
keymap.set('', 'fh', '<C-w>h')
keymap.set('', 'fk', '<C-w>k')
keymap.set('', 'fl', '<C-w>l')
keymap.set('', 'fj', '<C-w>j')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Moving fast
keymap.set('n', 's', '4j', { silent = true })
keymap.set('n', 'w', '4k', { silent = true })
keymap.set('n', 'S', '11j', { silent = true })
keymap.set('n', 'W', '11k', { silent = true })
keymap.set('n', 'A-Right>', 'e', { silent = true })

-- Moving lines
keymap.set('n', '<A-Up>', '<cmd>m -1<CR>')
keymap.set('n', '<A-Down>', '<cmd>m +2<CR>')
keymap.set('i', '<A-Up>', '<Esc><cmd>m -1<CR>')
keymap.set('i', '<A-Down>', '<Esc><cmd>m +2<CR>')
