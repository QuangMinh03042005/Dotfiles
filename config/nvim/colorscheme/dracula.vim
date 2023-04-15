colorscheme dracula

lua << EOF
    vim.api.nvim_set_hl(0, "@field", {fg = "#ffb86c"})
    vim.api.nvim_set_hl(0, "@type", {fg = "#8be9fd"})
    vim.api.nvim_set_hl(0, "@type.builtin", {link = "@keyword"})
    --vim.api.nvim_set_hl(0, "Identifier", {fg = "#ffb86c"})
    vim.api.nvim_set_hl(0, "@variable.builtin", {link = "@number"})
    vim.api.nvim_set_hl(0, "Structure", {link = "@type"})
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {link = "@type"})
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {link = "@type"})
EOF
