colorscheme dracula

lua << EOF
    vim.api.nvim_set_hl(0, "@field", {link = "@property"})
    vim.api.nvim_set_hl(0, "@type", {fg = "#8be9fd", italic = true})
    vim.api.nvim_set_hl(0, "@type.builtin", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@variable.builtin", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@parameter", {fg = "#ffb86c"})
    vim.api.nvim_set_hl(0, "Structure", {link = "@type"})
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = "#8be9fd"})
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = "#8be9fd"})
    vim.api.nvim_set_hl(0, "@attribute", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@parameter", {fg = "#ffb86c", italic = true})
    vim.api.nvim_set_hl(0, "@namespace", {link = "@type"})
EOF
