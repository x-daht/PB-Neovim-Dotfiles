require 'global-using'

-- open file tree | [normal mode] => [space + t]
nvim_set_keymap('n', '<leader>t', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
