local fn = vim.fn

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- Have packer manage itself

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim',
                run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
        }
    }

    -- CMP
    use {
        'hrsh7th/nvim-cmp', -- The completion plugin
        'hrsh7th/cmp-nvim-lsp', -- LSP completions
        'hrsh7th/cmp-buffer', -- Buffer completions
        'hrsh7th/cmp-path', -- Path completions
        'dcampos/nvim-snippy',
        'dcampos/cmp-snippy',
    }

    -- LSP
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'nvimtools/none-ls.nvim',
        'lvimuser/lsp-inlayhints.nvim',
    }

    -- Git
    use {
        'lewis6991/gitsigns.nvim', tag = '*',
        'sindrets/diffview.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Colorscheme
    use 'Shatur/neovim-ayu'

    -- Speed-up startup time
    use 'lewis6991/impatient.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

