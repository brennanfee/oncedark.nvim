set rtp+=.
set rtp+=./misc/plenary

lua << EOF
vim.cmd [[colorscheme oncedark]]
EOF

runtime! plugin/plenary.vim
command BasicSpec PlenaryBustedFile tests/basic_spec.lua

