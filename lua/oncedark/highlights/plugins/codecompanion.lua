local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require("oncedark.config").config

  return {
    CodeCompanionChatHeader = { fg = theme.palette.magenta, bold = true },
    CodeCompanionChatSeparator = { fg = theme.palette.gray },
    CodeCompanionChatTool = { fg = theme.palette.bg, bg = theme.palette.bright_green },
    CodeCompanionChatVariable = { fg = theme.palette.bg, bg = theme.palette.blue },
  }
end

return M
