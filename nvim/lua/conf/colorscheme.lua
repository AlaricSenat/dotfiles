local status_ok, colorscheme = pcall(require, 'ayu')
if not status_ok then
    return
end

colorscheme.setup({
    dark = true,
})
colorscheme.colorscheme()
