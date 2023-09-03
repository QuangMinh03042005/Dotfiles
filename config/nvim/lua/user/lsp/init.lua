local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
--require("user.lsp.emmet")
-- require("user.lsp.renamer")
-- require("user.lsp.code-action")

-- vim.diagnostic.config({
--     virtual_text = {
--         format = function(diagnostic)
--             local lines = vim.split(diagnostic.message, "\n")
--             return lines[1]
--         end,
--         virt_text_pos = "right_align",
--         suffix = " ",
--     },
-- })
