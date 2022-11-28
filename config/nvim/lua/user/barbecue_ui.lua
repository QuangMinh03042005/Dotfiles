local status_ok, barbecue_ui = pcall(require, "barbecue.ui")

if not status_ok then
	return
end

barbecue_ui.toggle(true)
