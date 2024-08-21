local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    TSRainbowRed = { fg = theme.palette.bright_red },
    TSRainbowYellow = { fg = theme.palette.yellow },
    TSRainbowBlue = { fg = theme.palette.blue },
    TSRainbowOrange = { fg = theme.palette.orange },
    TSRainbowGreen = { fg = theme.palette.bright_green },
    TSRainbowViolet = { fg = theme.palette.magenta },
    TSRainbowCyan = { fg = theme.palette.cyan },
  }
end

return M
