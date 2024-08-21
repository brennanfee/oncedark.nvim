local M = require("oncedark.utils.template")

M.filetype = "kdl"

M.template = [[
// Colors - https://github.com/brennanfee/oncedark.nvim

themes {
    oncedark_${name} {
        fg "${fg}"
        bg "${bg}"
        black "${black}"
        red "${red}"
        green "${green}"
        yellow "${yellow}"
        blue "${blue}"
        magenta "${purple}"
        cyan "${cyan}"
        white "${white}"
        orange "${orange}"
    }
}
]]

return M
