local config = require("buffer_store.config")

local buffer_store = {}

---@diagnostic disable: param-type-mismatch
function buffer_store.setup(user_options)
    config.merge_options(user_options or {})

    -- Unload modules
    package.loaded["buffer_store.cursor_position"] = nil
    package.loaded["buffer_store.no_name"] = nil

    -- Clean up commands
    pcall(vim.cmd, "autocmd! bs_cursor_position")
    pcall(vim.cmd, "autocmd! bs_no_name")
    pcall(vim.cmd, "delcommand ENoName")

    -- Load modules
    if config.get_option("cursor_position.enabled") then
        require("buffer_store.cursor_position")
    end
    if config.get_option("no_name.enabled") then
        require("buffer_store.no_name")
    end
end

return buffer_store
