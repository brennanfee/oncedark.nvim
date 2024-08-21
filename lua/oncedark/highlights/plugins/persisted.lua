local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    PersistedTelescopeSelected = { fg = theme.palette.magenta },
    PersistedTelescopeDir = { link = "Directory" },
    PersistedTelescopeBranch = { fg = theme.palette.magenta },
  }
end

return M
