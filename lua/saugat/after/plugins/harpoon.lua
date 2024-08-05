local harpoonUI = require('harpoon.ui')
local harpoonMark = require('harpoon.mark')

vim.keymap.set('n', '<C-e>', harpoonUI.toggle_quick_menu, {})
vim.keymap.set('n', '<leader>a', harpoonMark.add_file, {})
vim.keymap.set('n', '<C-h>', function() harpoonUI.nav_file(1); end, {})
vim.keymap.set('n', '<C-t>', function() harpoonUI.nav_file(2); end, {})
vim.keymap.set('n', '<C-n>', function() harpoonUI.nav_file(3); end, {})
vim.keymap.set('n', '<C-s>', function() harpoonUI.nav_file(4); end, {})
