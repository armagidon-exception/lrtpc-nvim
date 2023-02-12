local M = {}


function M.setup()
    local lsputil = require("lspconfig.util")
    local hook = lsputil.add_hook_after
    lsputil.on_setup = hook(lsputil.on_setup, function(config)
        config.on_new_config = hook(config.on_new_config, M.on_new_config)
    end)
end

M.on_new_config = function (config, _)
    config.settings = config.settings or {}
    local libs = require('lrtpc.schemaparser').get_config_contents()[config.name]
    if not libs then
        return
    end
    local add_lib = require('lrtpc.lsps')[config.name]
    if not add_lib then
        return
    end
    for _, lib in ipairs(libs) do
        add_lib(config, vim.fs.normalize(lib))
    end
end


return M
