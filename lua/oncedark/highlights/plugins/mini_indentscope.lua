local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    MiniIndentscopeSymbol = { fg = theme.palette.magenta },
  }
end

return M
