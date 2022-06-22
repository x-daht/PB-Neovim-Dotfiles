require 'global-using';

-- live subtituion nvim
if nvim_function_rv('has', 'nvim') == 1 then
    nvim_set('inccommand', 'split')
end

-- general features
nvim_command 'autocmd!'
nvim_command 'if !1 | finish | endif'
nvim_command 'syntax enable'
nvim_command 'set nobackup'
nvim_command 'set nowritebackup'
nvim_command 'set nobackup'
nvim_command 'set noswapfile'
nvim_command 'set clipboard^=unnamed,unnamedplus'
nvim_command 'set noshowmode'
nvim_command 'set nosc noru nosm'
nvim_command 'set path+=**'
nvim_set('number', true)
nvim_set('relativenumber', true)
nvim_set('numberwidth', 1)
nvim_set('title', true)
nvim_set('fileencodings', 'utf-8')
nvim_set('encoding', 'utf-8')
nvim_set('termencoding', 'utf-8')
nvim_set('showcmd', true)
nvim_set('cmdheight', 1)
nvim_set('laststatus', 2)
nvim_set('scrolljump', 5)
nvim_set('scrolloff', 10)
nvim_set('mouse', 'a')
nvim_set('ruler', true)
nvim_set('cursorline', true)
nvim_set('expandtab', true)
nvim_set('autoindent', true)
nvim_set('smartindent', true)
nvim_set('smarttab', true)
nvim_set('hlsearch', true)
nvim_set('showmatch', true)
nvim_set('incsearch', true)
nvim_set('ignorecase', true)
nvim_set('smartcase', true)
nvim_set('lazyredraw', true)
nvim_set('shiftwidth', 2)
nvim_set('tabstop', 2)
nvim_set('wrap', true)
nvim_set('backspace', 'indent,eol,start')
nvim_set('magic', true)
nvim_set('previewheight', 10)
nvim_set('mat', 2)
nvim_set('history', 1000)
nvim_set('viewoptions', 'folds,options,cursor,unix,slash')
nvim_set('winblend', 0)
nvim_set('wildoptions', 'pum')
nvim_set('completeopt', 'menuone,noinsert,noselect')
nvim_set('grepprg', 'rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs')
nvim_set('grepformat', '%f:%l:%c:%m,%f:%l:%m')
nvim_set('updatetime', 250)
nvim_set('background', 'dark')

-- language of nvim
nvim_command 'language en_US'

-- automatic indentation
nvim_command 'filetype plugin indent on'

-- disable indentation when pasting external text
nvim_command 'autocmd InsertLeave * set nopaste'

-- interpret files extension
nvim_command 'autocmd BufNewFile,BufRead *.es6 setf javascript'
nvim_command 'autocmd BufNewFile,BufRead *.tsx setf typescriptreact'
nvim_command 'autocmd BufNewFile,BufRead *.md set filetype=markdown'
nvim_command 'autocmd BufNewFile,BufRead *.mdx set filetype=markdown'

-- ignored items
local ignored_items = {
    'tags',
    '*/__pycache__/*',
    'build/*',
    'build.?/*',
    '*/node_modules/*',
    '*/env/*',
    '*.png',
    '*.jpg',
    '*.jpeg',
    '*/migrations/*',
    '*/.git/*',
}
local ignore = ''
for i = 1, #ignored_items do
    ignore = ignore .. ignored_items[i] .. ','
end
nvim_set('wildignore', ignore)

-- suffixes | Route termination
local suffixes = {
    '.js',
    '.vim',
    '.vimrc',
    '.jsx',
    '.ts',
    '.tsx',
    '.md',
    '.mdx',
    '.json',
    '.yml',
    '.yaml',
    '.toml',
    '.html',
    '.css',
    '.scss',
    '.sass',
    '.less',
    '.styl',
    '.php',
    '.rb',
    '.sh',
    '.py',
    '.rbx',
    '.es',
    '.aux',
    '.out',
    '.log',
    '.tex',
    '.cb',
    '.obj',
    '.o',
    '.dll',
    '.exe',
    '.class',
    '.jar',
    '.war',
    '.so',
    '.ipynb',
}
local suffix = ''
for i = 1, #suffixes do
    suffix = suffix .. suffixes[i] .. ','
end
nvim_set('suffixesadd', suffix)

-- cursor line | Visual mode
nvim_command 'highlight Visual cterm=none ctermbg=236 ctermfg=none guibg=Grey40'
nvim_command 'highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000'
nvim_command 'highlight Comment cterm=italic gui=italic'
