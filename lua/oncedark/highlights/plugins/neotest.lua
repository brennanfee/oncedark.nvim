local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require("oncedark.config").config

  return {
    NeotestAdapterName = { fg = theme.palette.magenta },
    -- NeotestBorder not implemented yet
    NeotestDir = { fg = theme.palette.cyan },
    NeotestExpandMarker = { fg = theme.palette.gray },
    NeotestFailed = { fg = theme.palette.bright_red },
    NeotestFile = { fg = theme.palette.cyan },
    NeotestFocused = {
      bg = (config.options.cursorline and theme.generated.cursorline or "NONE"),
    },
    NeotestIndent = { fg = theme.palette.fg },
    NeotestNamespace = { fg = theme.palette.blue },
    NeotestPassed = { fg = theme.palette.bright_green },
    NeotestRunning = { fg = theme.palette.yellow },
    NeotestSkipped = { fg = theme.palette.cyan },
    -- NeotestTest links to Normal
  }
end

return M
