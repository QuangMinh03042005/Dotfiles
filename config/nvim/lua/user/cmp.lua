local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    return
end

-- local border_enabled = true

-- local winhighlight = "FloatBorder:SuggestWidgetBorder,CursorLine:SuggestWidgetSelect,Search:None"
-- local winhighlight = "FloatBorder:SuggestWidgetBorder,CursorLine:PmenuSel,Search:None"
-- if border_enabled then
--     winhighlight = "Normal:Normal,PmenuThumb:ScrollbarSlider," .. winhighlight
-- else
--     winhighlight = "Normal:Pmenu," .. winhighlight
-- end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local kind_icons = {
    Text = "",
    Constructor = "",
    --Constructor = "",
    Method = "",
    Function = "",
    Field = "",
    -- Variable = "",
    Variable = "",
    -- Class = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    --Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    -- EnumMember = "",
    Constant = "",
    -- Struct = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

--   פּ ﯟ   some other good icons
-- local kind_icons = {
-- 	Text = "",
-- 	--Method = "m",
-- 	Method = "",
-- 	Function = "",
-- 	Constructor = "",
-- 	Field = "",
-- 	Variable = "",
-- 	Class = "",
-- 	Interface = "",
-- 	Module = "",
-- 	Property = "",
-- 	Unit = "",
-- 	Value = "",
-- 	Enum = "",
-- 	Keyword = "",
-- 	Snippet = "",
-- 	Color = "",
-- 	File = "",
-- 	Reference = "",
-- 	Folder = "",
-- 	EnumMember = "",
-- 	Constant = "",
-- 	Struct = "",
-- 	Event = "",
-- 	Operator = "",
-- 	TypeParameter = "",
-- }

--[[ require("lspkind").init({
    symbol_map = kind_icons,
}) ]]

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
        ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ["<C-e>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expandable() then
                luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },
    formatting = {
        -- fields = { "kind", "abbr", "menu" },

        -- format = function(entry, vim_item)
        -- 	local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
        -- 	local strings = vim.split(kind.kind, "%s", { trimempty = true })
        -- 	-- kind.kind = " " .. strings[1] .. " "
        -- 	kind.kind = strings[1]
        -- 	-- kind.menu = "    (" .. strings[2] .. ")"
        -- 	kind.menu = "    " .. strings[2]
        -- 	return kind
        -- end,

        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            -- Kind icons
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            -- vim_item.menu = ({
            --     -- nvim_lsp = "[LSP]",
            --     -- luasnip = "[Snippet]",
            --     -- buffer = "[Buffer]",
            --     -- path = "[Path]",
            -- })[entry.source.name]
            return vim_item
        end,
    },
    -- matching = {
    --     disallow_fuzzy_matching = true,
    --     disallow_fullfuzzy_matching = true,
    --     disallow_partial_fuzzy_matching = true,
    --     disallow_partial_matching = true,
    --     disallow_prefix_unmatching = false,
    -- },
    sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" },
        -- { name = "buffer" },
        -- { name = "nvim_lua" },
        { name = "path" },
    },
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    window = {
        --completion = cmp.config.window.bordered(),
        -- completion = cmp.config.window.disable,
        completion = {
            border = "none",
            scrollbar = false,
        },
        -- completion = {
        --     winhighlight = winhighlight,
        --     border = border_enabled and "single" or "none",
        -- },
        documentation = cmp.config.disable,
    },
    -- view = {
    --     entries = "native",
    -- },
    -- experimental = {
    --     ghost_text = { hl_group = "@comment" },
    -- },
    performance = {
        throttle = 0.5,
        debounce = 0.5,
        fetching_timeout = 0.5,
        max_view_entries = 100,
        confirm_resolve_timeout = 0.5,
    },
})

cmp.setup.filetype({ "css", "scss" }, {
    sources = {
        { name = "nvim_lsp" },
    },
    performance = { throttle = 0.5, debounce = 0.5, fetching_timeout = 0.5 },
})

-- `:` cmdline setup.
cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        {
            name = "cmdline",
            option = {
                ignore_cmds = { "Man", "!" },
            },
        },
    }),
})

-- `/` cmdline setup.
cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})
