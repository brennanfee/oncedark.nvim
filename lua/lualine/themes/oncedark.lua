local colors = require("oncedark.helpers").get_colors("oncedark")
local config = require("oncedark.config").config

local oncedark = {}

oncedark.normal = {
  a = { bg = colors.green, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.green },
  c = {
    bg = config.options.lualine_transparency and colors.none or colors.bg_statusline,
    fg = colors.fg,
  },
}

oncedark.insert = {
  a = { bg = colors.blue, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.blue },
}

oncedark.command = {
  a = { bg = colors.magenta, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

oncedark.visual = {
  a = { bg = colors.yellow, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

oncedark.replace = {
  a = { bg = colors.red, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

local inactive_bg = config.options.highlight_inactive_windows and colors.color_column or colors.bg
oncedark.inactive = {
  a = { bg = inactive_bg, fg = colors.blue },
  b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
  c = {
    bg = config.options.lualine_transparency and colors.none or inactive_bg,
    fg = colors.fg_gutter_inactive,
  },
}

return oncedark
