return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },

    -- Rose-pine theme
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate'
    },

    -- Harpoon
    {
        'ThePrimeagen/harpoon',
        dependencies = { 'nvim-lua/plenary.nvim' }, -- Harpoon needs plenary
    },

    --undotree
    {
        'mbbill/undotree'
    },

    --vim-fugitive
    {
        'tpope/vim-fugitive'
    },

    --LSP-zero
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            --Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },
}
