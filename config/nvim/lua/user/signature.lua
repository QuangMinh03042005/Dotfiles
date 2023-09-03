local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
    return
end

local cfg = {
    hint_prefix = "",
    floating_window = false,
}

lsp_signature.setup(cfg)
