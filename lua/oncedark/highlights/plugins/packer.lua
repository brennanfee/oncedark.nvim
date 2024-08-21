local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    packerFail = { fg = theme.palette.bright_red }, -- Icon when install/update fails
    packerSuccess = { fg = theme.palette.bright_green }, -- Icon when install/update is a success
    packerWorking = { fg = theme.palette.yellow }, -- Icon when syncing
    packerOutput = { fg = theme.palette.blue }, -- Text beneath plugin title (e.g. Commits)
    packerStatusFail = { fg = theme.palette.bright_red },
    packerStatusSuccess = { fg = theme.palette.bright_green }, -- Plugin name when install/update is a success
  }
end

return M
