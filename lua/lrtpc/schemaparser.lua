local M = {}


function M.get_config_contents()
    local path = vim.fn.getcwd()
    local filename = '.lrtpc-conf'
    local full_path = path.. '/' .. filename
    if vim.fn.filereadable(full_path) ~= 1 then
        return {}
    end

    local file = io.open(full_path, 'r')
    if file == nil then return {} end
    local json = file:read('*a')
    file:close()
    local obj = vim.json.decode(json)

    return obj
end


return M
