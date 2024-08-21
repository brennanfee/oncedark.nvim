local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    WhichKey = { fg = theme.palette.magenta },
    WhichKeyDesc = { fg = theme.palette.fg },
    WhichKeySeparator = { fg = theme.palette.bright_green },
    WhichKeyFloat = { bg = theme.generated.cursorline },
    WhichKeyGroup = { fg = theme.palette.blue },
  }
end

return M
