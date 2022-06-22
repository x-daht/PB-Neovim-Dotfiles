require 'global-using'

nvim_global('lightline', {
    colorscheme = 'gruvbox',
    component = {
        bufnum = '%n',
        inactive ='inactive'
    },
    component_function = {
        git_branch = 'FugitiveHead',
    },
    subseparator = {
        left = '',
        right = ''
    },
    active = {
        left = {
            {'mode', 'paste'},
            {},
            {'readonly', 'filename', 'modified'}
        },
        right = {
            {'filetype', 'fileencoding', 'percent', 'lineinfo'},
            {},
            {'gitbranch'}
        }
    },
    inactive = {
        left = {
            {'inactive'},
            {},
            {'filename'}
        },
        right = {
            {'bufnum', 'filetype', 'fileencoding'},
            {},
            {'gitbranch'}
        }
    }
})