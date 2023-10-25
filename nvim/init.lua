require 'conf.options'
require 'conf.keymaps'
require 'conf.filetype'
require 'conf.plugins'

require 'conf.telescope'

require 'conf.cmp'
require 'conf.snippets'
require 'conf.lsp'

require 'conf.git'

require 'conf.colorscheme'
require 'conf.statusline'
require 'conf.treesitter'

pcall(require, 'impatient')
