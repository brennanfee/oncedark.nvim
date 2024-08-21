local util = require("oncedark.utils")
local config = require("oncedark.config").config

local M = {}

---Form highlight groups based on the theme
---@param theme table
---@return table
---@return boolean|string|number|table
function M.groups(theme)
  local editor = require("oncedark.highlights.editor").groups(theme)
  local syntax = require("oncedark.highlights.syntax").groups(theme)
  local plugins = require("oncedark.highlights.plugin").groups(theme)
  local filetypes = require("oncedark.highlights.filetype").groups(theme)

  local groups = util.deep_extend(editor, syntax, plugins, filetypes)
  local custom_groups = vim.empty_dict()

  if config.highlights then
    custom_groups = util.replace_vars(
      vim.deepcopy(config.highlights),
      util.deep_extend(theme.palette, theme.generated)
    )
  end

  return groups, custom_groups
end

return M
