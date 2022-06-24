if vim.g.loaded_nvim_treesitter then
  return
end
vim.g.loaded_nvim_treesitter = true

-- setup modules
require("nvim-treesitter").setup()

local api = vim.api

-- define autocommands
local augroup = api.nvim_create_augroup("NvimTreesitter", {})

api.nvim_create_autocmd("Filetype", {
  pattern = "query",
  group = augroup,
  callback = function()
    api.nvim_clear_autocmds {
      group = augroup,
      event = "BufWritePost",
    }
    api.nvim_create_autocmd("BufWritePost", {
      group = augroup,
      buffer = 0,
      callback = function(opts)
        require("nvim-treesitter.query").invalidate_query_file(opts.file)
      end,
      desc = "Invalidate query file",
    })
  end,
  desc = "Reload query",
})

-- define highlights
local highlights = {
  TSComment = { fg = "#cc8c3c" },
  TSAnnotation = { fg = "#96a6c8" },
  TSAttribute = { fg = "#96a6c8" },
  TSConstructor = { fg = "#96a6c8" },
  TSType = { fg = "#ffdd33", style = "bold"},
  TSTypeBuiltin = { fg = "#ffdd33", style = "bold" },
  TSConditional = { fg = "#ffdd33", style = "bold" },
  TSException = { fg = "#ffdd33", style = "bold" },
  TSInclude = { fg = "#95a99f" },
  TSKeyword = { fg = "#ffdd33" , style = "bold"},
  TSKeywordReturn = { fg = "#ffdd33", style = "bold" },
  TSKeywordFunction = { fg = "#ffdd33" , style="bold"},
  TSLabel = { fg = "#96a6c8" },
  TSNone = { fg = "#e4e4ef" },
  TSNamespace = { fg = "#95a99f" },
  TSRepeat = { fg = "#ffdd33", style = "bold"},
  TSConstant = { fg = "#ffdd33" , style = "bold"},
  TSConstBuiltin = { fg = "#ffdd33" , style = "bold"},
  TSFloat = { fg = "#95a99f" },
  TSNumber = { fg = "#95a99f" },
  TSBoolean = { fg = "#95a99f" },
  TSCharacter = { fg = "#73c936" },
  TSError = { fg = "#f43841" },
  TSFunction = { fg = "#96a6c8" },
  TSFuncBuiltin = { fg = "#96a6c8" },
  TSMethod = { fg = "#96a6c8"},
  TSConstMacro = { fg = "#95a99f" },
  TSFuncMacro = { fg = "#96a6c8" },
  --TSProperty = { fg = C.cyan },
  TSOperator = { fg = "#e4e4ef" },
  --TSField = { fg = C.blue },
  --TSParameter = { fg = C.red },
  --TSParameterReference = { fg = C.red },
  --TSVariable = { fg = C.fg },
  --TSVariableBuiltin = { fg = C.red },
  --TSSymbol = { fg = C.cyan },
  TSText = { fg = "#e4e4ef" },
  --TSTextReference = { fg = C.red },
  --TSPunctDelimiter = { fg = C.fg },
  --TSTagDelimiter = { fg = C.gray },
  --TSTagAttribute = { fg = C.orange },
  TSPunctBracket = { fg = "#e4e4ef" },
  TSPunctSpecial = { fg = "#e4e4ef" },
  TSString = { fg = "#73c936" },
  --TSStringRegex = { fg = C.orange },
  --TSStringEscape = { fg = C.orange },
  --TSTag = { fg = C.blue },
  --TSEmphasis = { style = "italic" },
  --TSUnderline = { style = "underline" },
  --TSNote = { fg = C.info_yellow, style = "bold" },
  --TSWarning = { fg = C.warning_orange, style = "bold" },
  --TSDanger = { fg = C.error_red, style = "bold" },
  --TSTitle = { fg = C.blue, style = "bold" },
  --TSLiteral = { fg = C.green },
  --TSURI = { fg = C.blue, style = "underline" },
  --TSMath = { fg = C.fg },
  --TSKeywordOperator = { fg = C.purple },
  --TSStructure = { fg = C.fg },
  --TSStrong = { fg = C.yellow_orange },
  --TSQueryLinterError = { fg = C.warning_orange },
  --TSEnvironment = { fg = C.fg },
  --TSEnvironmentName = { fg = C.fg },
}

for k, v in pairs(highlights) do
  api.nvim_set_hl(0, k, v)
end
