local status_ok, colorscheme = pcall(require, 'onedark')
if not status_ok then
    return
end

colorscheme.load()
