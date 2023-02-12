return function (config, lib)
    config.settings.Lua = config.settings.Lua or {}
    config.settings.Lua.workspace = config.settings.Lua.workspace or {}
    config.settings.Lua.workspace.library = config.settings.Lua.library or {}
    table.insert(config.settings.Lua.workspace.library, lib)
end
