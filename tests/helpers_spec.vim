set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local oncedark = require("oncedark")
oncedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/oncedark_test/"),
    colors = {
        dark_red = "require('oncedark.helpers').darken('red', 10, 'oncedark')",
        light_blue = "require('oncedarko.helpers').lighten('blue', 10, 'oncelight')",
        bright_green = "require('oncedarko.helpers').brighten('green', 10, 'oncedark')",
        basic_red = "require('oncedarko.helpers').darken('#FF0000', 5)",
    },
    highlights = {
        DarkHighlight = {
            fg = "${dark_red}",
        },
        LightHighlight = {
            fg = "${light_blue}",
        },
        BrightHighlight = {
            fg = "${bright_green}",
        },
        BasicRedHighlight = {
            fg = "${basic_red}",
        },
    },
    filetypes = {
        all = false,
    },
    plugins = {
        all = false,
    },
})
vim.cmd [[colorscheme oncedark]]
EOF

runtime! plugin/plenary.vim
command HelpersSpec PlenaryBustedFile tests/helpers_spec.lua

