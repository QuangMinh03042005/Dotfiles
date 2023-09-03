local status_ok, configs = pcall(require, "kommentary.config")
if not status_ok then
    return
end

configs.configure_language("default", {
    prefer_single_line_comments = true,
})
