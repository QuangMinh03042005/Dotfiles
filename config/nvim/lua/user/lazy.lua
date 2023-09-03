local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=main",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    return
end

lazy.setup({
    "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
    "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
    "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
    {
        "utilyre/sentiment.nvim",
        version = "*",
        event = "VeryLazy", -- keep for lazy loading
        opts = {
            -- config
            delay = 0,
        },
    },

    -- File manager
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    -- Tab close
    "moll/vim-bbye",

    -- Status line
    "nvim-lualine/lualine.nvim",

    -- Tabline
    { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },

    -- Terminal
    { "akinsho/toggleterm.nvim", version = "*", config = true },

    -- "ahmedkhalf/project.nvim",

    -- This plugin adds indentation guides to all lines (including empty lines,.
    --"lukas-reineke/indent-blankline.nvim",

    -- Dashboard
    "goolord/alpha-nvim",

    -- Never forget your key bindings
    "folke/which-key.nvim",

    -- Colorschemes
    "morhetz/gruvbox",
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    "ishan9299/nvim-solarized-lua",
    "rebelot/kanagawa.nvim",
    {
        "blazkowolf/gruber-darker.nvim",
        opts = {
            italic = {
                strings = false,
                comments = false,
                operators = false,
                folds = false,
            },
        },
    },
    { "rockyzhang24/arctic.nvim", dependencies = { "rktjmp/lush.nvim" } },
    { "projekt0n/github-nvim-theme" },
    {
        "briones-gabriel/darcula-solid.nvim",
        dependencies = "rktjmp/lush.nvim",
        event = "VeryLazy",
    },
    "tanvirtin/monokai.nvim",
    "Mofiqul/dracula.nvim",
    "nordtheme/vim",

    -- Treesitter for syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        "nvim-treesitter/playground",
        "windwp/nvim-ts-autotag",
    },

    -- Cmp plugins
    "hrsh7th/nvim-cmp",
    -- "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "saadparwaiz1/cmp_luasnip",
    -- "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-cmdline",

    -- Code snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },

    -- LSP
    "neovim/nvim-lspconfig", -- enable LSP
    { "williamboman/mason.nvim" }, -- simple to use language server installer
    { "williamboman/mason-lspconfig.nvim" },
    "tamago324/nlsp-settings.nvim", -- language server settings defined in json for
    "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
    -- {
    --     "ray-x/lsp_signature.nvim",
    -- },
    {
        "SmiteshP/nvim-navic",
        dependencies = "neovim/nvim-lspconfig",
    },
    -- "onsails/lspkind.nvim",
    -- "weilbith/nvim-code-action-menu",
    -- "filipdutescu/renamer.nvim",
    "folke/trouble.nvim",
    "simrat39/symbols-outline.nvim",

    -- Debugging
    -- { "rcarriga/nvim-dap-ui", dependencies = "mfussenegger/nvim-dap" },

    -- File search
    "nvim-telescope/telescope.nvim",

    -- Git
    -- "lewis6991/gitsigns.nvim",

    --Comment
    "b3nj5m1n/kommentary",

    --Move text
    "booperlv/nvim-gomove",

    --Multiple cursors
    "terryma/vim-multiple-cursors",
    "otavioschwanck/cool-substitute.nvim",

    -- Preview color
    "norcalli/nvim-colorizer.lua",

    -- Without lsp
    "vim-autoformat/vim-autoformat",
    "rhysd/vim-clang-format",
    "preservim/tagbar",

    -- Picking windows
    "gbrlsnchs/winpick.nvim",

    -- Surround
    {
        "kylechui/nvim-surround",
        --tag = "main", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },
}, {
    ui = {
        -- border = "rounded",
        border = "single",
    },

    install = {
        -- install missing plugins on startup. This doesn't increase startup time.
        missing = true,
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "retrobox" },
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
                "editorconfig",
                "man",
                "nvim",
                "spellfile",
                "rplugin",
                "perl_provider",
                "python_provider",
                "rrhelper",
                "ruby_provider",
                "matchit",
                "matchparen",
            },
        },
    },
})

-- close lazy panel with esc
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lazy",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})
