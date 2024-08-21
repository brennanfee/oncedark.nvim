local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    AerialClass = { fg = theme.palette.magenta },
  }
end

return M
