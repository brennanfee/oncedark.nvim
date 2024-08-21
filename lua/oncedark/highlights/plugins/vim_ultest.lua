local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    UltestPass = { fg = theme.palette.bright_green },
    UltestFail = { fg = theme.palette.bright_red },
    UltestRunning = { fg = theme.palette.yellow },
    UltestBorder = { fg = theme.palette.gray },
    UltestInfo = { fg = theme.palette.magenta },
  }
end

return M
