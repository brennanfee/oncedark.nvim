local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require("oncedark.config").config

  return {
    DapUIScope = { bg = theme.palette.blue, fg = theme.palette.bg },
    DapUIType = { fg = theme.palette.blue },
    DapUIDecoration = { fg = theme.palette.blue },
    DapUIModifiedValue = { fg = theme.palette.cyan },
    DapUIThread = { fg = theme.palette.magenta },
    DapUIStoppedThread = { bg = theme.palette.magenta, fg = theme.palette.bg },
    DapUIFloatBorder = {
      bg = config.options.transparency and "NONE" or theme.palette.bg,
      fg = theme.palette.gray,
    },
    DapUILineNumber = { fg = theme.palette.gray },
    DapUIFrameName = { fg = theme.palette.fg },
    DapUISource = { fg = theme.palette.magenta },
    DapUIBreakpointsPath = { bg = theme.palette.yellow, fg = theme.palette.bg },
    DapUIBreakpointsInfo = { fg = theme.palette.fg },
    DapUIBreakpointsCurrentLine = { fg = theme.palette.yellow },
    DapUIBreakpointsLine = { link = "DapUIBreakpointsCurrentLine" },
    DapUIWatchesEmpty = { bg = theme.palette.bright_red, fg = theme.palette.bg },
    DapUIWatchesValue = { fg = theme.palette.bright_red },
    DapUIWatchesError = { fg = theme.palette.bright_red },
  }
end

return M
