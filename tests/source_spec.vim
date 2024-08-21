set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local oncedark = require("oncedark")
oncedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/oncedark_test/"),
    plugins = {
        all = false,
        treesitter = true,
    },
})
vim.cmd [[colorscheme oncedark]]
EOF

runtime! plugin/plenary.vim
command SourceSpec PlenaryBustedFile tests/source_spec.lua

