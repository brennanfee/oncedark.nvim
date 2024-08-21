local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require("oncedark.config").config

  return {
    NvimTreeNormalNC = { -- Color when nvim-tree is no longer in focus
      bg = config.options.transparency and "NONE"
        or (
          config.options.highlight_inactive_windows and theme.generated.color_column
          or theme.palette.bg
        ),
    },
    NvimTreeSymlink = { fg = theme.palette.cyan },
    NvimTreeFolderName = { fg = theme.palette.blue },
    NvimTreeRootFolder = { fg = theme.palette.magenta },
    NvimTreeFolderIcon = { fg = theme.palette.magenta },
    NvimTreeEmptyFolderName = { fg = theme.palette.gray },
    NvimTreeOpenedFolderName = { fg = theme.palette.magenta },
    NvimTreeExecFile = { fg = theme.palette.bright_green },
    NvimTreeOpenedFile = { fg = theme.palette.magenta },
    NvimTreeSpecialFile = { link = "Special" },
    -- NvimTreeImageFile = {},
    NvimTreeMarkdownFile = { fg = theme.palette.bright_red },
    NvimTreeIndentMarker = { fg = theme.palette.gray },
    NvimTreeCursorLine = { bg = theme.palette.gray },

    NvimTreeLicenseIcon = { fg = theme.palette.yellow },
    NvimTreeYamlIcon = { fg = theme.palette.yellow },
    NvimTreeTomlIcon = { fg = theme.palette.yellow },
    NvimTreeGitignoreIcon = { fg = theme.palette.bright_red },
    NvimTreeJsonIcon = { fg = theme.palette.bright_green },

    NvimTreeLuaIcon = { fg = theme.palette.blue },
    NvimTreePythonIcon = { fg = theme.palette.yellow },
    NvimTreeShellIcon = { fg = theme.palette.fg },
    NvimTreeJavascriptIcon = { fg = theme.palette.yellow },
    NvimTreeCIcon = { fg = theme.palette.blue },
    NvimTreeReactIcon = { fg = theme.palette.blue },
    NvimTreeHtmlIcon = { fg = theme.palette.bright_red },
    NvimTreeRustIcon = { fg = theme.palette.fg },
    NvimTreeTypescriptIcon = { fg = theme.palette.blue },
    NvimTreeVimIcon = { fg = theme.palette.bright_green },

    NvimTreeGitDirty = { fg = theme.palette.bright_red },
    NvimTreeGitStaged = { fg = theme.palette.yellow },
    NvimTreeGitMerge = { fg = theme.palette.cyan },
    NvimTreeGitRenamed = { fg = theme.palette.yellow },
    NvimTreeGitNew = { fg = theme.palette.bright_green },
    NvimTreeGitDeleted = { fg = theme.palette.bright_red },
  }
end

return M
