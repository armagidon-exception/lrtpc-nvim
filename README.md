# LSP RuntimePath Config
Super simple plugin for adding external libraries to your neovim runtimepath

## Insallation

**Packer**

```lua
use 'armagidon-exception/lrtpc-nvim'
```

## How to use
```lua
local lrtpc_status, lrtpc = pcall(require, 'lrtpc')
if lrtpc_status then
    lrtpc.setup()
end
```

From now on the plugin will look for .lrtpc-conf in your cwd to add your libraries
so make sure that you open your file in folder where `.lrtpc-conf` contains

## .lrtpc-conf format
```json
{
    "lua_ls": [
        "foo/bar"
    ],
    -- Your other server names
}
```
**Note: All lib are paths automatically normalized**

```~/foo/bar``` will be expaneded to ```/home/{user}/foo/bar```

**Note: For now the plugin only supports `lua_ls`. If you want to add more, see `lsps.lua` and `lsps/lua_ls.lua`**

## Configuring AwesomeWM
This plugin was created to have intellisense for AwesomeWM

To set it up create `.lrtpc-conf` in your config folder and add the following

```json
{
    "lua_ls": [
        "/usr/share/awesome/lib/",
    ],
}
```

Or wherever your AwesomeWM libs are located



## Contribution

Have any suggestions?
Make an issue or a PR
