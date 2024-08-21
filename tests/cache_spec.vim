set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local oncedark = require("oncedark")
oncedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/oncedark_test"),
})

local util = require("oncedark.utils")
local cache_path = require("oncedark.config").config.cache_path

-- Create timestamp hashes to compare to
vim.g.oncedark_hash = util.hash(util.join_paths(cache_path, "cache"))
vim.g.oncedark_compiled = util.hash(util.join_paths(cache_path, "oncedark_compiled"))
vim.g.oncelight_compiled = util.hash(util.join_paths(cache_path, "oncelight_compiled"))

vim.cmd [[colorscheme oncedark]]
EOF

runtime! plugin/plenary.vim
command CacheSpec PlenaryBustedFile tests/cache_spec.lua

