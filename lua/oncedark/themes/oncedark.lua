local meta = {
  name = "oncedark",
  background = "dark",
}

local default_colors = {
  bg = "#282c34",
  fg = "#d3d3d3",

  red = "#cd5c5c",
  bright_red = "#a52a2a",
  yellow = "#f0e68c",
  bright_yellow = "#f4a460",
  green = "#719368",
  bright_green = "#3cb371",
  cyan = "#00ced1",
  bright_cyan = "#ffe4e1",
  blue = "#4682b4",
  bright_blue = "#b0c4de",
  magenta = "#da70d6",
  bright_magenta = "#9932cc",
  white = "#d3d3d3",
  bright_white = "#f5f5f5",
  black = "#333333",
  bright_black = "#696969",

  mid_gray = "#a9a9a9",

  brown = "#a52a2a", -- Alias for bright_red
  orange = "#f4a460", -- Alias for bright_yellow
  lime = "#3cb371", -- Alias for bright_green
  pink = "#ffe4e1", -- Alias for bright_cyan
  purple = "#800080", -- Alias for bright_magenta
  gray = "#696969", -- Alias for bright_black
  grey = "#696969", -- Alias for bright_black

  highlight = "#696969",
  comment = "#a9a9a9",
  none = "NONE",
}

---Colors which are generated depending on the values in the palette
---@param colors table the theme's color palette
---@return table
local function generate(colors)
  local color = require("oncedark.helpers")

  return {
    cursorline = colors.cursorline or color.brighten(colors.bg, 4),
    color_column = colors.color_column or color.brighten(colors.bg, 4),
    fold = colors.fold or color.brighten(colors.bg, 4),
    line_number = colors.line_number or colors.gray,
    indentline = colors.indentline or colors.gray,
    selection = colors.selection or colors.highlight,
    float_bg = colors.float_bg or color.darken(colors.bg, 3),
    inlay_hint = colors.inlay_hint or color.darken(colors.gray, 7),

    -- Git colors
    git_add = colors.git_add or colors.green,
    git_change = colors.git_change or colors.yellow,
    git_delete = colors.git_delete or colors.red,

    git_hunk_add = colors.git_hunk_add or colors.green,
    git_hunk_delete = colors.git_hunk_delete or colors.red,
    git_hunk_add_inline = colors.git_hunk_add_inline or colors.green,
    git_hunk_change_inline = colors.git_hunk_change_inline or colors.yellow,
    git_hunk_delete_inline = colors.git_hunk_delete_inline or colors.red,

    -- Git diff
    diff_add = colors.diff_add or colors.green,
    diff_delete = colors.diff_delete or colors.red,
    diff_text = colors.diff_text or colors.blue,

    -- Lualine colors
    bg_statusline = colors.bg_statusline or color.darken(colors.bg, 2.5),
    fg_gutter = colors.fg_gutter or color.lighten(colors.bg, 9.6),
    fg_gutter_inactive = colors.fg_gutter_inactive or colors.fg,

    -- Virtual text
    virtual_text_error = colors.virtual_text_error or color.lighten(colors.red, 9.3),
    virtual_text_warning = colors.virtual_text_warning or color.lighten(colors.yellow, 9),
    virtual_text_information = colors.virtual_text_information or color.lighten(colors.blue, 10.2),
    virtual_text_hint = colors.virtual_text_hint or color.lighten(colors.cyan, 10.8),
  }
end

return {
  meta = meta,
  palette = default_colors,
  generated = function()
    return generate(default_colors)
  end,
}
