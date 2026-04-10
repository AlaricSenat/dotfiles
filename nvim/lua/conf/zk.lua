local zk = require('zk')
local commands = require('zk.commands')

zk.setup({
  picker = 'telescope',
  lsp = {
    config = {
      cmd = { 'zk', 'lsp' },
      name = 'zk',
    },
    auto_attach = {
      enabled = true,
      filetypes = { 'markdown' },
    },
  },
})

local opts = { noremap = true, silent = true }

-- Browse all notes
vim.keymap.set('n', '<leader>zo', function() commands.get('ZkNotes')({ sort = { 'modified' } }) end, opts)
-- Search notes by content
vim.keymap.set('n', '<leader>zf', function() commands.get('ZkNotes')({ sort = { 'modified' }, match = { vim.fn.input('Search: ') } }) end, opts)
-- Open tags picker
vim.keymap.set('n', '<leader>zt', function() commands.get('ZkTags')() end, opts)
-- Create a new note in notes/
vim.keymap.set('n', '<leader>zn', function() commands.get('ZkNew')({ group = 'notes', title = vim.fn.input('Title: ') }) end, opts)
-- Create a new meeting note in meetings/
vim.keymap.set('n', '<leader>zm', function() commands.get('ZkNew')({ dir = 'meetings', title = vim.fn.input('Meeting: ') }) end, opts)
-- Open/create today's daily note
vim.keymap.set('n', '<leader>zd', function()
  local days_back = tonumber(os.date('%u')) == 1 and 3 or 1
  local prevdate = os.date('%Y-%m-%d', os.time() - days_back * 86400)
  commands.get('ZkNew')({ group = 'daily', extra = { prevdate = prevdate } })
end, opts)
-- Open notes linked to the current buffer
vim.keymap.set('n', '<leader>zl', function() commands.get('ZkLinks')() end, opts)
-- Open notes that link to the current buffer
vim.keymap.set('n', '<leader>zb', function() commands.get('ZkBacklinks')() end, opts)
