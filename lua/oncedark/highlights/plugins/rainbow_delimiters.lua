local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    RainbowDelimiterRed = { fg = theme.palette.bright_red },
    RainbowDelimiterYellow = { fg = theme.palette.yellow },
    RainbowDelimiterBlue = { fg = theme.palette.blue },
    RainbowDelimiterOrange = { fg = theme.palette.orange },
    RainbowDelimiterGreen = { fg = theme.palette.bright_green },
    RainbowDelimiterViolet = { fg = theme.palette.magenta },
    RainbowDelimiterCyan = { fg = theme.palette.cyan },
  }
end

return M
