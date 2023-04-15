colorscheme arctic

lua << EOF
vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@function" })
EOF
