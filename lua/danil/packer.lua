-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
packer.init({ max_jobs = 10 })

return packer.startup(function(use)
    -- required packages
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    -- hopping around
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- record changes
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    -- language features
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    use 'fatih/vim-go'

    -- read prettierrc file for formatting on autosave
    use 'numToStr/prettierrc.nvim'

    -- soydev stuff
    use 'mhinz/vim-startify'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        branch = 'master',
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    }
    use 'luisiacc/gruvbox-baby'
    use { 'codota/tabnine-nvim', run = './dl_binaries.sh' }

    -- postman can smd
    use 'mistweaverco/kulala.nvim'
end)
