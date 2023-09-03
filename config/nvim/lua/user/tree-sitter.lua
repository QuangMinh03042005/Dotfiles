local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "cpp",
        "cmake",
        "python",
        "rust",
        "bash",
        "toml",
        "java",
        "javascript",
        "typescript",
        "html",
        "css",
    },
    highlight = {
        enable = true, -- false will disable the whole extension
        --       disable = { "css", "html" }, -- list of language that will be disabled
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true, --disable = { "python", "css" }
    },
    autotag = {
        enable = true,
        filetypes = { "html", "xml" },
    },
})
