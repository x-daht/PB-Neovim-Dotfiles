require 'global-using';

-- save and run javascript file in current buffer | [normal mode] + [space + n]
nvim_set_keymap('n', '<leader>n', ':w<CR> :!node %<CR>', { noremap = true });
