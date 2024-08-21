if exists('g:loaded_oncedark') | finish | endif

command! OncedarkCache lua require("oncedark").cache()
command! OncedarkClean lua require("oncedark").clean()
command! OncedarkColors lua require("oncedark.utils.colorizer").show()
command! OncedarkExportToAlacritty lua require("oncedark.extra.alacritty").show_in_buffer('OnceDark Alacritty')
command! OncedarkExportToKitty lua require("onecdark.extra.kitty").show_in_buffer('OnceDark Kitty')
command! OncedarkExportToWezterm lua require("oncedark.extra.wezterm").show_in_buffer('OnceDark Wezterm')
command! OncedarkExportToWindowsTerminal lua require("oncedark.extra.windows_terminal").show_in_buffer('OnceDark Windows Terminal')
command! OncedarkExportToFoot lua require("oncedark.extra.foot").show_in_buffer('OnceDark Foot')
command! OncedarkExportToRio lua require("oncedark.extra.rio").show_in_buffer('OnceDark Rio')
command! OncedarkExportToZellij lua require("oncedark.extra.zellij").show_in_buffer('OnceDark Zellij')

let g:loaded_oncedark = 1

