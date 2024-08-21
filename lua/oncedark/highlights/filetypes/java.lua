local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@return table
function M.groups(theme)
  local config = require("oncedark.config").config

  return {
    ["@type.qualifier.java"] = { fg = theme.palette.magenta },
    ["@type.builtin.java"] = { fg = theme.palette.magenta },
  }
end

return M
