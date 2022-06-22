require 'global-using'

-- save plugins
if nvim_function_rv('has', 'nvim') == 1 then
    nvim_global('plug_home', nvim_function_rv('stdpath', 'data') .. '/plugged')
end

-- plugin installer
local function nvim_plug(...)
    nvim_function_nrv('plug#', ...)
end

-- plugins
nvim_call('plug#begin')
if nvim_function_rv('has', 'nvim') == 1 then

    -- control version [git | github]
    nvim_plug 'tpope/vim-fugitive'
    nvim_plug 'tpope/vim-rhubarb'

    -- color scheme
    nvim_plug 'morhetz/gruvbox'
    nvim_plug 'shinchu/lightline-gruvbox.vim'
    nvim_plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    -- status bar
    nvim_plug 'itchyny/lightline.vim'
    --nvim_plug 'maximbaz/lightline-ale'

    -- autocomplete
    nvim_plug('neoclide/coc.nvim', { branch = 'release' })
    nvim_plug 'jiangmiao/auto-pairs'

    -- tree explorer
    nvim_plug 'preservim/nerdtree'

    -- LSP [Language Service Provider]
    nvim_plug 'neovim/nvim-lspconfig'

    -- Icons
    nvim_plug 'ryanoasis/vim-devicons'
end
nvim_call('plug#end')