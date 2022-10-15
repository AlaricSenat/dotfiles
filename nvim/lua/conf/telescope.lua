local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
    return
end

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = 'move_selection_previous',
                ['<C-j>'] = 'move_selection_next',
                ['<C-q>'] = 'close',
            },
        },
    },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})

telescope.load_extension('fzf')
