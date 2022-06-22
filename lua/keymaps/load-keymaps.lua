require 'global-using'

local subdirectories = 'keymaps\\config'
nvim_global('mapleader', ' ')
load_configuration_sbfl(subdirectories, 'node-js')
load_configuration_sbfl(subdirectories, 'nerdtree')
