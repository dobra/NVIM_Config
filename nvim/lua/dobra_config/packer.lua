-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('eandrju/cellular-automaton.nvim')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},        -- LSP support
            {'simrat39/rust-tools.nvim'},     -- Rust LSP
            {'hrsh7th/nvim-cmp'},             -- Autocomplete engine
            {'hrsh7th/cmp-nvim-lsp'},         -- Completion source
            {'saadparwaiz1/cmp_luasnip'},     -- Completion source
            {'hrsh7th/cmp-buffer'},           -- Completion source
            {'L3MON4D3/LuaSnip'},             -- Snippet engine}
        }
    }
        use {
            'goolord/alpha-nvim',
            requires = { 'echasnovski/mini.icons' },
            config = function ()
                require'alpha'.setup(require'alpha.themes.startify'.config)
            end
        }

end)

