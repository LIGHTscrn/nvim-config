return {
  -- Telescope
  { 'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Rose-pine theme
  { 'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  },

  -- Treesitter
 {
   'nvim-treesitter/nvim-treesitter',
   build = ':TSUpdate',
   dependencies = {
	'nvim-treesitter/playground'
   },
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
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lua' },

    --Snippets
    {'L3MON4D3/LuaSnip'},
    { 'rafamadriz/friendly-snippets' },
  }
},
{
  "nvim-neotest/nvim-nio"  -- Required for nvim-dap-ui
},
{
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
    "nvim-neotest/nvim-nio",  -- Ensure it's also listed here if needed
  },
  config = function()
    require("dapui").setup()
    require("dap-python").setup("python")  -- Adjust path if needed
  end,
},

}
    





