local nvim = vim

-- general value setter
function _G.nvim_set(feature_name, ...)
    nvim['opt'][feature_name] = ...
end

-- command
function _G.nvim_command(command_name)
    nvim['api']['nvim_command'](command_name)
end

-- function | return value [rv]
function _G.nvim_function_rv(function_name, ...)
    return nvim['fn'][function_name](...)
end

-- function | no return value [nrv]
function _G.nvim_function_nrv(function_name, ...)
    nvim['fn'][function_name](...)
end

-- global value modifier
function _G.nvim_global(global_value_name, ...)
    nvim['g'][global_value_name] = ...
end

-- calling functions
function _G.nvim_call(function_name)
    nvim['call'](function_name)
end

local path = debug.getinfo(1, 'S').source:match('@?(.+/)'):gsub('/', '\\')

-- load configuration [lua file] | file [fl]
function _G.load_configuration_fl(file)
    dofile(path .. file .. '.lua')
end

-- load configuration [lua file] | subdirectories [sb] + file [fl]
function _G.load_configuration_sbfl(subdirectories, file)
    dofile(path .. subdirectories .. '\\' .. file .. '.lua')
end

-- set keymap
function _G.nvim_set_keymap(mode, shortcut, action, ...)
    nvim['api']['nvim_set_keymap'](mode, shortcut, action, ...)
end