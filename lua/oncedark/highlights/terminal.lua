local M = {}

---Set the highlights for the terminal colors
---@param theme table
---@return table
function M.groups(theme)
  local color = require("oncedark.helpers")

  return {
    terminal_color_0 = theme.palette.black,
    terminal_color_8 = theme.palette.gray,

    terminal_color_1 = theme.palette.red,
    terminal_color_9 = theme.palette.bright_red,

    terminal_color_2 = theme.palette.green,
    terminal_color_10 = theme.palette.bright_green,

    terminal_color_3 = theme.palette.yellow,
    terminal_color_11 = theme.palette.bright_yellow,

    terminal_color_4 = theme.palette.blue,
    terminal_color_12 = theme.palette.bright_blue,

    terminal_color_5 = theme.palette.magenta,
    terminal_color_13 = theme.palette.bright_magenta,

    terminal_color_6 = theme.palette.cyan,
    terminal_color_14 = theme.palette.bright_cyan,

    terminal_color_7 = theme.palette.fg,
    terminal_color_15 = theme.palette.fg,
  }
end

return M
