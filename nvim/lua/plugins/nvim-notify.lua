local status_ok, notify = pcall(require, 'notify')
if not status_ok then
  return
end

notify.setup {
  background_colour = "#00000000",
  max_width = 80,
  max_height = 1000,
  render = "minimal",
}

notify("Welcome JosephPM")

vim.notify = notify
notify.history()
